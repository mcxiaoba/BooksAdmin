package org.base23.web.Service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.base23.web.Mapper.WmsBooksMapper;
import org.base23.web.Model.Entity.WmsBooksEntity;
import org.base23.web.Service.WmsBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WmsBookServiceImpl extends ServiceImpl<WmsBooksMapper, WmsBooksEntity> implements WmsBookService {
}
