package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.society.application.model.Submodule;

@Repository
public interface SubmoduleRepo  extends JpaRepository<Submodule, Integer>{

}
