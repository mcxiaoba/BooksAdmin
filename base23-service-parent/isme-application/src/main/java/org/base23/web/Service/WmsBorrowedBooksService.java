package org.base23.web.Service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.base23.web.Model.Dto.WmsBorrowedBooksDto;
import org.base23.web.Model.Entity.WmsBorrowedBooksEntity;
import org.base23.web.Model.Vo.WmsBorrowedBooksVo;

import java.util.List;

public interface WmsBorrowedBooksService extends IService<WmsBorrowedBooksEntity> {


    List<WmsBorrowedBooksVo> getByBookId(Integer bookId);


}
