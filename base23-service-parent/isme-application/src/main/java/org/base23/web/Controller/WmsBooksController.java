package org.base23.web.Controller;


import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import liquibase.ui.UIService;
import lombok.extern.slf4j.Slf4j;
import org.base23.uaa.business.service.UserService;
import org.base23.uaa.core.domain.entity.User;
import org.base23.web.Model.Entity.WmsBooksEntity;
import org.base23.web.Service.WmsBookService;
import org.base23.web.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/wms/books")
@Slf4j
public class WmsBooksController {

    @Autowired
    private WmsBookService wmsBookService;

    @Autowired
    private UserService UserService;


    /**
     * 新增图书信息
     *
     * @param wmsBooksEntity
     * @return
     */
     @PostMapping("/add")
     public Result addBook(@RequestBody WmsBooksEntity wmsBooksEntity) {
         log.info("新增图书信息：{}", wmsBooksEntity);
         return Result.data(wmsBookService.save(wmsBooksEntity));
     }

    /**
     * 查询所有图书信息
     * @return
     */
    @GetMapping("/List")
    public Result getAllBooksList() {
        List<WmsBooksEntity> list = wmsBookService.list();
        log.info("查询所有图书信息：{}", list);
        return Result.data(list);
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
        List<WmsBooksEntity> list = wmsBookService.list(Wrappers.<WmsBooksEntity>query().lambda().eq(WmsBooksEntity::getUserId, user.getId()));
        log.info("根据用户id查询书籍信息：{}", list);
        return Result.data(list);
    }



    /**
     * 根据id删除图书信息
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result deleteBook(@PathVariable Long id) {
        // 方法实现
        log.info("根据id删除图书信息：{}", id);
        wmsBookService.removeById(id);
        return Result.success();
    }

    /**
     * 根据id数据修改图书信息
     * @param id
     * @param wmsBooksEntity
     * @return
     */
     @PatchMapping("/{id}")
     public Result updateBook(@PathVariable Long id, @RequestBody WmsBooksEntity wmsBooksEntity) {
         log.info("根据id数据修改图书信息：{}", wmsBooksEntity);
         wmsBooksEntity.setId(id);
         wmsBookService.updateById(wmsBooksEntity);
         return Result.success();
     }








//    /**
//     * 查询所有图书信息
//     * @return
//     */
//    @GetMapping("/List")
//    public List<WmsBooksEntity> getAllBooksList() {
//        List<WmsBooksEntity> list = wmsBookService.list();
//        log.info("查询所有图书信息：{}", list);
//        return list;
//    }






//    /**
//     * 新增图书信息
//     * @param wmsBooksEntity
//     * @return
//     */
//    @RequestMapping("/add")
//    public Result addBook(@RequestBody WmsBooksEntity wmsBooksEntity) {
//        return wmsBookService.addBook(wmsBooksEntity);
//    }

//    /**
//     * 根据图书ID查询图书信息
//     * @param bookId
//     * @return
//     */
//    @RequestMapping("/{bookId}")
//    public Object getBookById(String bookId) {
//        return wmsBookService.getBookById(bookId);
//    }


}
