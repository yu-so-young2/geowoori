package com.ssafy.SmartMirror.controller;

import com.ssafy.SmartMirror.domain.*;
import com.ssafy.SmartMirror.dto.*;
import com.ssafy.SmartMirror.repository.MemberRepository;
import com.ssafy.SmartMirror.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@RequestMapping("/mirror")
@RestController
public class MirrorController {

    private KidsScriptService kidsScriptService;
    private KidsResponseService kidsResponseService;
    private MemberService memberService;
    private MirrorService mirrorService;
    private WidgetService widgetService;
    private PlaylistService playlistService;
    private CalendarService calendarService;
    private RegionService regionService;
    private BrushingService brushingService;

    @Autowired
    public MirrorController(KidsScriptService kidsScriptService, KidsResponseService kidsResponseService, MemberService memberService, MirrorService mirrorService, WidgetService widgetService, PlaylistService playlistService, CalendarService calendarService, RegionService regionService, BrushingService brushingService) {
        this.kidsScriptService = kidsScriptService;
        this.kidsResponseService = kidsResponseService;
        this.memberService = memberService;
        this.mirrorService = mirrorService;
        this.widgetService = widgetService;
        this.playlistService = playlistService;
        this.calendarService = calendarService;
        this.regionService = regionService;
        this.brushingService = brushingService;
    }


    @PostMapping("/kidsScript/insert")
    public ResponseEntity insertKidsScript(@RequestParam("script") String script) {
        ResponseDefault responseDefault = null;

        System.out.println(script);
        int res = kidsScriptService.saveKidsScript(script);

        responseDefault = ResponseDefault.builder()
                .success(true)
                .data(res)
                .build();

        return new ResponseEntity<>(responseDefault, HttpStatus.OK);
    }

    @PostMapping("/getScript")
    public ResponseEntity getScript(@RequestBody RequestGetScript getScriptDto) {
        ResponseDefault responseDefault = null;

        /** 일단 우선적으로 오자마자 멤버의 정보를 가지고와 어린이인지 어른인지 확인합니다. */
        Member getMember = memberService.findByMemberKey(getScriptDto.getMemberKey());
        if (getMember == null) return new ResponseEntity("유저가 존재하지 않음!", HttpStatus.OK);

        /** 어린이라면 !!*/
        if (getMember.isKidsMode()) {

            /** 첫 질문일 때 if (req_key == 0) */
            if (getScriptDto.getReqKey() == 0) {

                //3. 시간에 맞는 인사말 가져오기
                int helloType = whatTime(LocalDateTime.now().getHour());
                System.out.println("nowWhatTime, hello type은? >> " + helloType);
                List<KidsResponse> kidsResponseList = kidsResponseService.getKidsResponse(getScriptDto.getReqKey(), getScriptDto.getReaction(), helloType);
                System.out.println("가능한 질문 개수는 > " + kidsResponseList.size());

                //가져온 응답할 수 있는 리스트 중에서 일단은 첫번째 응답을 사용(나중엔 랜덤)
                //응답을 가지고 script 멘트를 조회합니다.
                KidsResponse kidsResponse = kidsResponseList.get(0);
                KidsScript kidsScript = kidsScriptService.getKidsScript(kidsResponse.getResKey());

                //선택한 kidsScript를 가지고 resopnseDto를 만듭니다.
                ResponseScript responseScript = ResponseScript.builder()
                        .script(kidsScript.getScript())
                        .res_key(kidsScript.getScriptKey())
                        .type(kidsScript.getType())
                        .build();

                //첫 인사 Return!
                responseDefault = ResponseDefault.builder()
                        .success(true)
                        .data(responseScript)
                        .build();

                return new ResponseEntity(responseDefault, HttpStatus.OK);

                /** 첫 질문이 아닐 때 if (req_key != 0) */

            } else {

                //현재 시간의 정보와 마지막 양치 기록의 시간을 확인하여 양치 여부를 판단합니다.
                LocalDateTime now = LocalDateTime.now();
                System.out.println(now.toString());
                int year = now.getYear();
                int month = now.getMonthValue();
                int day = now.getDayOfMonth();
                int daysSum = year+month+day;

                List<Brushing> brushingList = brushingService.findAllByMember(getScriptDto.getMemberKey());
                Brushing brushing = brushingList.get(brushingList.size()-1);
                String[] date = brushing.getBrushingTime().split(" ");
                String[] days = date[0].split("-");
                String[] times = date[1].split(":");
                int brushingDaysSum = Integer.parseInt(days[0]) + Integer.parseInt(days[1]) + Integer.parseInt(days[2]);

                if(daysSum == brushingDaysSum) {
                    int historyType = whatTime(Integer.parseInt(times[0]));
                    int nowType = whatTime(now.getHour());

                    //양치기록의 시간 타입과 현재의 시간 타입이 같다면
                    //손을 씻어야 합니다.
                    if(historyType==nowType){
                        System.out.println("손씻어야해!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

                        List<KidsResponse> kidsResponseList = kidsResponseService.getKidsResponse(getScriptDto.getReqKey(), getScriptDto.getReaction(), getScriptDto.getType());
                        System.out.println("가능한 질문 개수는 > " + kidsResponseList.size());

                        //질문을 무사히 가져왔다면!
                        if(kidsResponseList.size()>0){
                            KidsResponse kidsResponse = kidsResponseList.get(0);
                            KidsScript kidsScript = kidsScriptService.getKidsScript(kidsResponse.getResKey());

                            //선택한 kidsScript를 가지고 resopnseDto를 만듭니다.
                            ResponseScript responseScript = ResponseScript.builder()
                                    .script(kidsScript.getScript())
                                    .res_key(kidsScript.getScriptKey())
                                    .type(kidsScript.getType())
                                    .build();

                            //첫 인사 Return!
                            responseDefault = ResponseDefault.builder()
                                    .success(true)
                                    .data(responseScript)
                                    .build();

                        } else {
                            return new ResponseEntity("가능한 질문이 존재하지 않습니다.", HttpStatus.OK);
                        }
                    } else {
                        System.out.println("양치하자@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

                        List<KidsResponse> kidsResponseList = kidsResponseService.getKidsResponse(getScriptDto.getReqKey(), getScriptDto.getReaction(), getScriptDto.getType());
                        System.out.println("가능한 질문 개수는 > " + kidsResponseList.size());

                        //질문을 무사히 가져왔다면!
                        if(kidsResponseList.size()>0){
                            KidsResponse kidsResponse = kidsResponseList.get(0);
                            KidsScript kidsScript = kidsScriptService.getKidsScript(kidsResponse.getResKey());

                            //선택한 kidsScript를 가지고 resopnseDto를 만듭니다.
                            ResponseScript responseScript = ResponseScript.builder()
                                    .script(kidsScript.getScript())
                                    .res_key(kidsScript.getScriptKey())
                                    .type(kidsScript.getType())
                                    .build();

                            //첫 인사 Return!
                            responseDefault = ResponseDefault.builder()
                                    .success(true)
                                    .data(responseScript)
                                    .build();

                        } else {
                            return new ResponseEntity("가능한 질문이 존재하지 않습니다.", HttpStatus.OK);
                        }
                    }
                } else {
                    System.out.println("오늘 처음 양치하넹##############################################################################################################################");

                    List<KidsResponse> kidsResponseList = kidsResponseService.getKidsResponse(getScriptDto.getReqKey(), getScriptDto.getReaction(), getScriptDto.getType());
                    System.out.println("가능한 질문 개수는 > " + kidsResponseList.size());

                    //질문을 무사히 가져왔다면!
                    if(kidsResponseList.size()>0){
                        KidsResponse kidsResponse = kidsResponseList.get(0);
                        KidsScript kidsScript = kidsScriptService.getKidsScript(kidsResponse.getResKey());

                        //선택한 kidsScript를 가지고 resopnseDto를 만듭니다.
                        ResponseScript responseScript = ResponseScript.builder()
                                .script(kidsScript.getScript())
                                .res_key(kidsScript.getScriptKey())
                                .type(kidsScript.getType())
                                .build();

                        //첫 인사 Return!
                        responseDefault = ResponseDefault.builder()
                                .success(true)
                                .data(responseScript)
                                .build();

                    } else {
                        return new ResponseEntity("가능한 질문이 존재하지 않습니다.", HttpStatus.OK);
                    }
                }

                return new ResponseEntity("여기까지 도달헀다?", HttpStatus.OK);
            }

        } else {
            return new ResponseEntity("어른 서비스는 아직 만들지 못했어요..", HttpStatus.OK);
        }
    }

    @PostMapping("/member")
    public ResponseEntity readMember(@RequestBody RequestInfo info) {
        ResponseDefault responseDefault = null; // response 객체 생성

        String serialNumber = info.getSerialNumber();
        Long memberKey = info.getMemberKey();
        System.out.println("Serial Number : " + serialNumber);
        System.out.println("member key : " + memberKey);

        // 1. 거울 시리얼 넘버와 멤버키 유효성 확인
        // 거울 넘버에 연결된 계정 정보와 멤버키를 가진 계정 정보가 같은지 확인
        Member member = memberService.findByMemberKey(memberKey);
        if(member == null) { // 멤버키에 해당하는 멤버가 없다면
            System.out.println("멤버키 없음");
        }

        Mirror mirror = mirrorService.findBySerialNumber(serialNumber);
        if(mirror == null) { // 시리얼넘버에 해당하는 거울이 없다면
            System.out.println("시리얼넘버 없음");
        }

        if(mirror.getUser().getUserKey() != member.getUser().getUserKey()) { // 멤버와 거울이 같은 계정을 공유하는지 확인
            System.out.println("잘못된 접근");
        }

        // 2. 멤버 정보 가져오기
        System.out.println("성공!");

        // 위젯
        Widget widget = widgetService.findByMemberKey(memberKey);
        // 위젯 dto로 만들기


        // 플레이리스트
        String playlist = playlistService.findByMemberKey(memberKey);
        System.out.println(playlist);

        // 지역
        DongCode dongCode = regionService.findByMemberKey(memberKey);
        // 지역 dto 로 만들기

        // 캘린더
        String calendar = calendarService.findByMemberKey(memberKey);
        // 캘린더 링크 접속 후 파싱 필요 !!!
        System.out.println(calendar);

        // responseDto 꾸리기
        ResponseWidget responseWidget = ResponseWidget.builder()
                .news(widget.isNews())
                .shot(widget.isShot())
                .calender(widget.isCalender())
                .playlist(widget.isPlaylist())
                .build();

        ResponseRegion responseRegion = ResponseRegion.builder()
                .sidoName(dongCode.getSidoName())
                .gugunName(dongCode.getGugunName())
                .dongName(dongCode.getDongName())
                .lat(dongCode.getLat())
                .lng(dongCode.getLng())
                .build();

        ResponseInfo responseInfo = ResponseInfo.builder()
                .memberKey(member.getMemberKey())
                .nickname(member.getNickname())
                .birth(member.getBirth())
                .kidsMode(member.isKidsMode())
                .widget(responseWidget)
                .playlist(playlist)
                .calender(calendar)
                .region(responseRegion)
                .build();

        responseDefault = ResponseDefault.builder()
                .success(true)
                .msg("성공")
                .data(responseInfo)
                .build();

        return new ResponseEntity(responseDefault, HttpStatus.OK);
    }

    //현재 시간을 가지고 현재가 어떤 시간인지 값을 찾아냅니다.
    public int whatTime(int hour){
        System.out.println("nowWhatTime, 현재 시간은 >> "+hour);
        if( 6<=hour && hour<=11 ) return 1;
        else if( 12<=hour && hour<=17 ) return 2;
        else if( 18<=hour && hour<=23) return 3;
        else return 4;
    }
}