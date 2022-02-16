package com.example.project.service;

import com.example.project.model.Login;
import com.example.project.model.User;
import com.example.project.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

        @Autowired
        private ProjectRepository userRepository;

        @Override
        public void addUser(User user){
            userRepository.saveAndFlush(user);
        }
    @Override
    public User validateUser(Login login) {return userRepository.findByUsername(login.getUsername());}
}
