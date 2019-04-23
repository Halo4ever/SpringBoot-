package com.miaoshaProject.service.impl;

import com.miaoshaProject.service.model.ItemModel;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;

import static org.junit.Assert.*;

/**
 * Created by Enzo Cotter on 2019/4/22.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ItemServiceImplTest {

    @Autowired
    private ItemServiceImpl itemService;

    @Test
    public void createItem() throws Exception {
        BigDecimal bigDecimal = new BigDecimal(2);
        ItemModel itemModel = new ItemModel();
        itemModel.setId(2);
        itemModel.setStock(200);
        itemModel.setPrice(bigDecimal);
        itemModel.setTitle("iphone99");
        itemModel.setImgUrl("baidu.com");
        itemModel.setDescription("It's a good iphone");
        ItemModel result = itemService.createItem(itemModel);

        Assert.assertNotNull(result);
    }

    @Test
    public void listItem() throws Exception {
    }

    @Test
    public void getItemById() throws Exception {
    }



}
