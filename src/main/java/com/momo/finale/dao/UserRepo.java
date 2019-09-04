package com.momo.finale.dao;

import com.momo.finale.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Integer> {

    User findByUsername(String username);
}
