package org.base23.web.Model.Vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.base23.web.Utils.BorrowStatus;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.Date;

@Data
public class WmsBorrowedBooksVo {

    private Integer id;  // 主键，自增，唯一标识借阅记录

    private Long userId; // 用户id

    private Integer bookId; // 书籍id


}
