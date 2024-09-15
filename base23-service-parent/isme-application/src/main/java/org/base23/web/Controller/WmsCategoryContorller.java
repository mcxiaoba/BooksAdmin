package org.base23.web.Controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.base23.web.Mapper.WmsCategoryMapper;
import org.base23.web.Model.Entity.WmsCategoryEntity;
import org.base23.web.Service.WmsCategoryService;
import org.base23.web.model.Result;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/wms/category")
@Slf4j
public class WmsCategoryContorller {

    @Autowired
    private WmsCategoryService wmsCategoryService;

    @Autowired
    private WmsCategoryMapper wmsCategoryMapper;

    /**
     * 新增图书类别
     */
    @PostMapping("/add")
    public Result save(@RequestBody WmsCategoryEntity wmsCategoryEntity) {

        log.info("新增图书类别");

        // 检查是否已存在相同名称的图书类别
        WmsCategoryEntity existingCategory = wmsCategoryService.getByName(wmsCategoryEntity.getCategoryName());
        if (existingCategory != null) {
            return Result.fail("图书类别名称已存在");
        }

        // 如果不存在，则保存新类别
        boolean success = wmsCategoryService.save(wmsCategoryEntity);
        return success ? Result.data(success) : Result.fail("保存失败");
    }


    /**
     * 查询图书类别
     * @return
     */
    @GetMapping("/list")
    public Result list() {
        log.info("查询图书类别");
        return Result.data(wmsCategoryService.list());
    }


    /**
     * 根据id删除图书类型
     */
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") Integer id) {
        log.info("根据id删除图书类型");
        return Result.data(wmsCategoryService.removeById(id));
    }


    /**
     * 根据id更新图书类别
     */
    @PatchMapping("/{id}")
    public Result update(@PathVariable("id") Integer id, @RequestBody WmsCategoryEntity wmsCategoryEntity) {
        log.info("根据id更新图书类别");
        wmsCategoryEntity.setCategoryId(id);
        return Result.data(wmsCategoryService.updateById(wmsCategoryEntity));
    }


    /**
     * 根据名字查询图书类别
     * @param categoryName 图书类别名称
     * @param pageNo 当前页码
     * @param pageSize 每页大小
     * @return 查询结果
     */
    @GetMapping("/categories")
    public Result getByName(
            @RequestParam("categoryName") String categoryName,
            @RequestParam("pageNo") int pageNo,
            @RequestParam("pageSize") int pageSize) {
        log.info("根据名字查询图书类别");
        log.info("name: " + categoryName);
        log.info("pageNo: " + pageNo);
        log.info("pageSize: " + pageSize);

        // 创建 QueryWrapper 并设置查询条件
        QueryWrapper<WmsCategoryEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("category_name", categoryName);

        // 分页查询
        Page<WmsCategoryEntity> page = new Page<>(pageNo, pageSize);
        IPage<WmsCategoryEntity> resultPage = wmsCategoryMapper.selectPage(page, queryWrapper);

        // 返回结果
        return Result.data(resultPage);

    }



//    /**
//     * 根据名字查询图书类别
//     * @param params
//     * @return
//     */
//    @GetMapping("/{params}")
//    public Result getByName(@RequestParam("name") String params) {
//        log.info("根据名字查询图书类别");
//
//        log.info("name"+params);
////        // 创建 QueryWrapper 并设置查询条件
////        QueryWrapper<WmsCategoryEntity> queryWrapper = new QueryWrapper<>();
////        queryWrapper.eq("name", name);
////
////        // 执行查询
////        List<WmsCategoryEntity> categories = wmsCategoryMapper.selectList(queryWrapper);
////
////        // 返回结果
////        return Result.data(categories);
//        return null;
//    }












}
