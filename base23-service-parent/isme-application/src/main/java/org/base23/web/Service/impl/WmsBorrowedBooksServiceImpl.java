package org.base23.web.Service.impl;

import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.base23.web.Mapper.WmsBorrowedBooksMapper;
import org.base23.web.Model.Dto.WmsBorrowedBooksDto;
import org.base23.web.Model.Entity.WmsBorrowedBooksEntity;
import org.base23.web.Model.Vo.WmsBorrowedBooksVo;
import org.base23.web.Service.WmsBorrowedBooksService;
import org.base23.web.Utils.R;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
public class WmsBorrowedBooksServiceImpl extends ServiceImpl<WmsBorrowedBooksMapper, WmsBorrowedBooksEntity> implements WmsBorrowedBooksService {

    @Autowired
    private WmsBorrowedBooksMapper wmsBorrowedBooksMapper;

    /**
     * 根据书籍id查询借阅是否有相同的书
     * @param bookId 书籍ID
     * @return 查询结果
     */
    @Override
    public List<WmsBorrowedBooksVo> getByBookId(Integer bookId) {
        try {
            log.info("根据图书ID获取借阅信息，图书ID：{}", bookId);

            // 使用 LambdaQueryWrapper 查询
            List<WmsBorrowedBooksEntity> wmsBorrowedBooksEntities = new LambdaQueryChainWrapper<>(wmsBorrowedBooksMapper)
                    .eq(WmsBorrowedBooksEntity::getBookId, bookId) // 确保 `getBookId` 对应数据库中的 `book_id` 列
                    .list(); // 获取所有匹配的记录

            // 手动转换为 VO 对象
            List<WmsBorrowedBooksVo> wmsBorrowedBooksList = wmsBorrowedBooksEntities.stream()
                    .map(entity -> {
                        WmsBorrowedBooksVo vo = new WmsBorrowedBooksVo();
                        // 设置 VO 属性，假设 VO 有这些属性
                        vo.setId(entity.getId());
                        vo.setBookId(entity.getBookId());
                        vo.setUserId(entity.getUserId());
                        // 其他属性转换
                        return vo;
                    })
                    .collect(Collectors.toList());

            log.info("查询结果：{}", wmsBorrowedBooksList);
            return wmsBorrowedBooksList; // 直接返回结果列表
        } catch (Exception e) {
            log.error("获取借阅信息时出现异常：{}", e.getMessage(), e);
            throw new RuntimeException("获取借阅信息失败", e);
        }
    }




}
