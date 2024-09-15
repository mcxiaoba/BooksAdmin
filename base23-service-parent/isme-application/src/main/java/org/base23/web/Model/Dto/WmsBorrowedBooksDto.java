package org.base23.web.Model.Dto;

import lombok.Data;
import org.base23.uaa.core.domain.entity.User;
import org.base23.web.Model.Entity.WmsBooksEntity;
import org.base23.web.Model.Entity.WmsBorrowedBooksEntity;

import java.util.List;

@Data
public class WmsBorrowedBooksDto {

    // 书籍列表
    private List<WmsBooksEntity> list;

    // 借阅书籍列表
    private List<WmsBorrowedBooksEntity> borrowedList;

    // 用户列表
    private List<User> userList;


}
