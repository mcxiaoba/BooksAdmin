package org.base23.web.Service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.base23.web.Mapper.WmsShoppingCartMapper;
import org.base23.web.Model.Entity.WmsShoppingCartEntity;
import org.base23.web.Service.WmsShoppingCartService;
import org.springframework.stereotype.Service;

@Service
public class WmsShoppingCartServiceImpl extends ServiceImpl<WmsShoppingCartMapper, WmsShoppingCartEntity> implements WmsShoppingCartService {
}
