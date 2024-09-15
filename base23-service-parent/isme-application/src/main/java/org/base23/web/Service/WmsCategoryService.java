package org.base23.web.Service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.base23.web.Model.Entity.WmsCategoryEntity;

public interface WmsCategoryService extends IService<WmsCategoryEntity> {
    WmsCategoryEntity getByName(String categoryName);
    
}
