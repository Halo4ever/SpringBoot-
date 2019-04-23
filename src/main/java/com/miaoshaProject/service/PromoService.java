package com.miaoshaProject.service;

import com.miaoshaProject.service.model.PromoModel;

/**
 * Created by Enzo Cotter on 2019/4/23.
 */
public interface PromoService {

    //根据itemId获取即将进行的或者正在进行的秒杀活动
    PromoModel getPromoByItemId(Integer integer);


}
