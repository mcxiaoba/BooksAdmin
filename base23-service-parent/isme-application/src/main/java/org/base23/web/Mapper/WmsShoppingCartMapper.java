package org.base23.web.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.base23.web.Model.Entity.WmsShoppingCartEntity;

@Mapper
public interface WmsShoppingCartMapper  extends BaseMapper<WmsShoppingCartEntity> {
    WmsShoppingCartEntity getCartById(Integer bookId);

    void updateCart(WmsShoppingCartEntity wmsShoppingCartEntity);
}
