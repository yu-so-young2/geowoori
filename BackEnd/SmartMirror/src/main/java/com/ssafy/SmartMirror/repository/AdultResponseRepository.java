package com.ssafy.SmartMirror.repository;

import com.ssafy.SmartMirror.domain.AdultScript;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdultResponseRepository extends JpaRepository<AdultScript, Long> {
}
