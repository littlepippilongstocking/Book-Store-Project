package com.example.project.service;

import com.example.project.model.Login;
import com.example.project.model.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    void addUser(User user);
    User validateUser(Login login);
}
