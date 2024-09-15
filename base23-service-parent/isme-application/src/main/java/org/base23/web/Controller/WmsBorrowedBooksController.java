package org.base23.web.Controller;

import lombok.extern.slf4j.Slf4j;
import org.base23.web.Mapper.WmsBorrowedBooksMapper;
import org.base23.web.Model.Dto.WmsBorrowedBooksDto;
import org.base23.web.Model.Entity.WmsBorrowedBooksEntity;
import org.base23.web.Model.Vo.WmsBorrowedBooksVo;
import org.base23.web.Service.WmsBorrowedBooksService;
import org.base23.web.Utils.R;
import org.base23.web.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.*;


@RestController
@RequestMapping("/wms/borrowedBooks")
@Slf4j
public class WmsBorrowedBooksController {

    @Autowired
    private WmsBorrowedBooksService wmsBorrowedBooksService;

    @Autowired
    private WmsBorrowedBooksMapper wmsBorrowedBooksMapper;



    /**
     * 查询借阅书籍列表
     * @return
     */
    @GetMapping("/list")
    public Result list() {

//        List<WmsBorrowedBooksEntity> list = wmsBorrowedBooksService.list();

        List<WmsBorrowedBooksVo> listVo = wmsBorrowedBooksMapper.listToVoList();
        log.info("list vo size:{}", listVo);

        return Result.data(listVo);
    }


    /**
     * 新增借阅书籍
     * @return
     */
    @PostMapping("/borrow")
    public Result borrow(@RequestBody  WmsBorrowedBooksEntity wmsBorrowedBooksEntity) {


        // 借阅时间
        wmsBorrowedBooksEntity.setBorrowDate(new Date());

//        log.info("新增借阅书籍：{}", wmsBorrowedBooksEntity);
        wmsBorrowedBooksService.save(wmsBorrowedBooksEntity);
        return Result.success();
    }



    /**
     * 根据书籍id查询借阅是否有相同的书
     * @param bookId 书籍ID
     * @return 查询结果
     */
    @GetMapping("/borrow/{bookId}")
    public R<List<WmsBorrowedBooksVo>> borrowBooksId(@PathVariable("bookId") Integer bookId) {
        log.info("查询书籍ID: {}", bookId);

        List<WmsBorrowedBooksVo> wmsBorrowedBooksList = wmsBorrowedBooksService.getByBookId(bookId);

        if (wmsBorrowedBooksList != null && !wmsBorrowedBooksList.isEmpty()) {
            log.info("找到借阅信息：{}", wmsBorrowedBooksList);
            return R.ok(wmsBorrowedBooksList);
        } else {
            log.warn("未找到借阅信息，书籍ID: {}", bookId);
            return R.error("未找到对应的借阅信息");
        }
    }


    /**
     * 根据用户id查询借阅书籍的信息
     * @param userId 用户ID
     * @return 查询结果
     */
    @GetMapping("/borrowuserId/{userId}")
    public Result borrowBooksIdAndUserId(@PathVariable("userId") Long userId) {
        log.info("查询书籍ID: {}",  userId);

//        List<WmsBorrowedBooksDto> wmsBorrowedBooksDtos = wmsBorrowedBooksMapper.getByBookIdAndUserId(userId);
//
//        if (wmsBorrowedBooksDtos != null) {
//            log.info("找到借阅信息：{}", wmsBorrowedBooksDtos);
//
//            return Result.data(wmsBorrowedBooksDtos);
//        } else {
//            log.warn("未找到借阅信息，书籍ID: {}, 用户ID: {}", userId);
//            return Result.fail("未找到对应的借阅信息");
//        }
        return Result.success();
    }














}
