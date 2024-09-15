package org.base23.web.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.base23.web.Model.Dto.WmsBorrowedBooksDto;
import org.base23.web.Model.Entity.WmsBorrowedBooksEntity;
import org.base23.web.Model.Vo.WmsBorrowedBooksVo;

import java.util.List;



@Mapper
public interface WmsBorrowedBooksMapper extends BaseMapper<WmsBorrowedBooksEntity> {
    List<WmsBorrowedBooksVo> listToVoList();

}
