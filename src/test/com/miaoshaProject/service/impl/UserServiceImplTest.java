package com.miaoshaProject.service.impl;

import com.miaoshaProject.service.model.UserModel;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Created by Enzo Cotter on 2019/4/22.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceImplTest {
    @Autowired
    private UserServiceImpl userService;

    @Test
    public void getUserById() throws Exception {
    }

    @Test
    public void register() throws Exception {
        UserModel result = userService.getUserById(1);
        System.out.print(result.getId());
        //Assert.assertEquals(1,result.getId());
    }

    @Test
    public void validateLogin() throws Exception {
    }



}
