package org.base23.web.Model.Entity;


import com.baomidou.mybatisplus.annotation.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import net.sf.jsqlparser.expression.DateTimeLiteralExpression;
import org.base23.database.entity.DBModel;
import org.base23.web.Utils.BorrowStatus;
import org.springframework.format.annotation.DateTimeFormat;


import java.time.LocalDateTime;
import java.util.Date;

/**
 * 借阅书籍记录实体类
 */
@Data
@TableName("wms_borrowed_books")
public class WmsBorrowedBooksEntity {
    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    @TableField("id")
    private Integer id;  // 主键，自增，唯一标识借阅记录

    @TableField("user_id")
    private Long userId; // 用户id

    @TableField("book_id")
    private Integer bookId; // 书籍id


//    @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")


    @TableField(value = "borrow_date", fill = FieldFill.INSERT)
    private Date borrowDate; // 借阅时间


//    如果传输时需要忽略某个属性可以使用@JsonIgnore
    @JsonIgnore
    private Date returnDate; // 归还时间

    @TableField("status")
    private BorrowStatus status; // 借阅状态，使用枚举类型


    @TableField(value = "created_at", fill = FieldFill.INSERT)
    private Date  createdAt; // 记录创建时间


    @TableField(value = "updated_at", fill = FieldFill.INSERT_UPDATE)
    private Date  updatedAt; // 记录最后更新时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public Date getBorrowDate() {
        return borrowDate;
    }

    public void setBorrowDate(Date borrowDate) {
        this.borrowDate = borrowDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public BorrowStatus getStatus() {
        return status;
    }

    public void setStatus(BorrowStatus status) {
        this.status = status;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "WmsBorrowedBooksEntity{" +
                "id=" + id +
                ", userId=" + userId +
                ", bookId=" + bookId +
                ", borrowDate=" + borrowDate +
                ", returnDate=" + returnDate +
                ", status=" + status +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
