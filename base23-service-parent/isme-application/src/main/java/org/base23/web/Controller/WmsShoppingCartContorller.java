package org.base23.web.Controller;


import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.extern.slf4j.Slf4j;
import org.base23.uaa.business.service.UserService;
import org.base23.uaa.core.domain.entity.User;
import org.base23.web.Mapper.WmsShoppingCartMapper;
import org.base23.web.Model.Entity.WmsBooksEntity;
import org.base23.web.Model.Entity.WmsShoppingCartEntity;
import org.base23.web.Service.WmsShoppingCartService;
import org.base23.web.model.Result;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/wms/shoppingCart")
@Slf4j
public class WmsShoppingCartContorller {



    @Autowired
    private WmsShoppingCartService wmsShoppingCartService;

    @Autowired
    private WmsShoppingCartMapper wmsShoppingCartMapper;


    @Autowired
    private UserService UserService;




    /**
     * 获取购物车列表
     * @return
     */
    @GetMapping("/getCartList")
    public Result getCartList(){
        List<WmsShoppingCartEntity> listed = wmsShoppingCartService.list();
        log.info("getCartList:{}",listed);
        return Result.data(listed);
    }

    /**
     * 根据用户id查询书籍信息
     * @param userId
     * @return
     */
    @GetMapping("/user/{userId}")
    public Result getBookByUserId(@PathVariable Long userId) {
        log.info("根据用户id查询书籍信息：{}", userId);
        User user = UserService.getUserById(userId);
        List<WmsShoppingCartEntity> list = wmsShoppingCartService.list(Wrappers.<WmsShoppingCartEntity>query().lambda().eq(WmsShoppingCartEntity::getUserId, user.getId()));
        log.info("根据用户id查询书籍信息：{}", list);
        return Result.data(list);
    }





    /**
     * 根据id获取购物车信息
     * @param bookId
     * @return
     */
    @GetMapping("/getCartById/{bookId}")
    public Result getCartById(@PathVariable("bookId") Integer bookId){
        log.info("getCartById:{}",bookId);
        WmsShoppingCartEntity wmsShoppingCartEntity = wmsShoppingCartMapper.getCartById(bookId);
//        log.info("getCartById:{}",wmsShoppingCartEntity);
        return Result.data(wmsShoppingCartEntity);
    }



    /**
     * 添加购物车
     * @param wmsShoppingCart
     * @return
     */
    @PostMapping("/addCart")
    public Result addCart(@RequestBody WmsShoppingCartEntity wmsShoppingCart){
//        log.info("addCart:{}",wmsShoppingCart);
        wmsShoppingCartService.save(wmsShoppingCart);
        log.info("addCart:{}",wmsShoppingCart);
        return Result.success();
//        return null;
    }


    /**
     * 更新购物车
     * @param wmsShoppingCartEntity
     * @return
     */
    @PutMapping("/updateCart")
    public Result updateCart(@RequestBody WmsShoppingCartEntity wmsShoppingCartEntity){
        wmsShoppingCartMapper.updateCart(wmsShoppingCartEntity);
        log.info("updateCart:{}",wmsShoppingCartEntity);
        return Result.success();
    }





//    /**
//     * 删除购物车
//     * @param bookId
//     * @return
//     */
//    @DeleteMapping("/deleteCart/{bookId}")
//    public Result deleteCart(@PathVariable("bookId") Integer bookId){
//        wmsShoppingCartService.removeById(bookId);
//        log.info("deleteCart:{}",bookId);
//        return Result.success();
//    }








}
