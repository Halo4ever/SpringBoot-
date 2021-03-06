package com.miaoshaProject.service;

import com.miaoshaProject.error.BusinessException;
import com.miaoshaProject.service.model.ItemModel;

import java.util.List;

/**
 * Created by Enzo Cotter on 2019/4/20.
 */
public interface ItemService {

    //创建商品
    ItemModel createItem(ItemModel itemModel) throws BusinessException;

    //商品列表浏览
    List<ItemModel> listItem();

    //商品详情浏览
    ItemModel getItemById(Integer id);

    //库存扣减
    boolean decreaseStock(Integer itemId,Integer amount)throws BusinessException;

    //商品销量增加
    void increaseSales(Integer itemId,Integer amount) throws BusinessException;
}
