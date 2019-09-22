package com.mugu.codes.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mugu.codes.entity.Users;

@Repository
public interface UserRepository extends JpaRepository<Users,String> {

}
