package com.repository;

import com.entity.glycemie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@Repository
public interface DiabeteRepository extends JpaRepository<glycemie, Integer> {

}
