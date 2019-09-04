package com.momo.finale.Service;

import com.momo.finale.dao.UserRepo;
import com.momo.finale.model.User;
import com.momo.finale.UserPrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@Qualifier("myuser")
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepo repo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = repo.findByUsername(username);

        if(username==null)
            throw new UsernameNotFoundException("User 404");

        return new UserPrincipal(user);
    }



}

