package org.base23.web.Service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.base23.web.Mapper.WmsCategoryMapper;
import org.base23.web.Model.Entity.WmsCategoryEntity;
import org.base23.web.Service.WmsCategoryService;
import org.springframework.stereotype.Service;

@Service
public class WmsCategoryServiceImpl extends ServiceImpl<WmsCategoryMapper, WmsCategoryEntity> implements WmsCategoryService {

    /**
     * 检查是否已存在相同名称的图书类别
     * @param categoryName
     * @return
     */
    @Override
    public WmsCategoryEntity getByName(String categoryName) {
        QueryWrapper<WmsCategoryEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("category_name", categoryName);
        return this.getOne(queryWrapper);
    }

}
