import { useEffect, useState } from "react";
import { useDispatch } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { mirrorActions } from "../../Redux/modules/mirror";

const Socket = (props) => {
  const { webSocket, setMsg } = props;

  const navigate = useNavigate();
  const dispatch = useDispatch();

  // server에서 보내주는 메시지
  const [message, setMessage] = useState(null);

  // client에서 보낼 메시지
  const [text, setText] = useState("");

  // 소켓을 통해 메시지가 전달된 경우, 실행되는 함수
  webSocket.onmessage = function (message) {
    console.log(message.data);
    if ( message.data.cmd === 'person_appear' ){
      // store에 member정보를 dispatch 하여 넣기
      if (message.data.body.data.kidsMode === true) {
        // kids mode on일 때 
        dispatch(mirrorActions.getMember(message.data.body.data));
        navigate('/kids');
      } 
      else if (message.data.body.data.kidsMode === false){
        // kids mode off일 때
        dispatch(mirrorActions.getMember(message.data.body.data));
        navigate('/general');
      }

    }
    else if (message.data.cmd === 'person_leave') {
      // 거울 사용 종료시 
      dispatch(mirrorActions.leaveMirror());
      navigate('/');
    } 
    else if (message.data.cmd === 'birthday') {
      dispatch(mirrorActions.getAction(message.data))
    }
    else if (message.data.cmd === 'easter_egg') {
      dispatch(mirrorActions.getAction(message.data))
    }
    else {
      dispatch(mirrorActions.getAction(message.data))
    }
    
    setMessage(message.data);
  };
    // 서버로 메시지를 전송하는 함수
    function sendMessage(){
        //웹소켓으로 textMessage객체의 값을 보낸다.
        webSocket.send(text);
        //textMessage객체의 값 초기화
        setText("");
    }
}

export default Socket;
