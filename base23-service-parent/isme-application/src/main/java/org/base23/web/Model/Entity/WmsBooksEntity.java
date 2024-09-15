package org.base23.web.Model.Entity;

import com.baomidou.mybatisplus.annotation.*;

import org.base23.database.entity.DBModel;
import org.hibernate.validator.constraints.Length;

import java.security.Timestamp;
import java.time.LocalDateTime;

/**
 *  图书实体类
 */
@TableName("wms_books")
public class WmsBooksEntity extends DBModel {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Long id;  // 图书ID

    private Integer userId;  // 用户ID

    @Length(max = 50)
    private String booksTitle;

    @Length(max = 50)// 标题
    private String booksAuthor;  // 作者

    @Length(max = 50)
    private String publisher;  // 出版商

    private String publicationDate;  // 出版日期

    private Integer categoryId;  // 类别ID

    private String description;  // 描述

    private Integer quantity;  // 数量

    private Integer available;  // 单价

    private String location;  // 存放数量

    private String imageUrl;  // 图片地址

    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Long createTime;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    private Long updateTime;  // 更新时间

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getBooksTitle() {
        return booksTitle;
    }

    public void setBooksTitle(String booksTitle) {
        this.booksTitle = booksTitle;
    }

    public String getBooksAuthor() {
        return booksAuthor;
    }

    public void setBooksAuthor(String booksAuthor) {
        this.booksAuthor = booksAuthor;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getAvailable() {
        return available;
    }

    public void setAvailable(Integer available) {
        this.available = available;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public Long getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    @Override
    public Long getUpdateTime() {
        return updateTime;
    }

    @Override
    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "WmsBooksEntity{" +
                "id=" + id +
                ", userId=" + userId +
                ", booksTitle='" + booksTitle + '\'' +
                ", booksAuthor='" + booksAuthor + '\'' +
                ", publisher='" + publisher + '\'' +
                ", publicationDate='" + publicationDate + '\'' +
                ", categoryId=" + categoryId +
                ", description='" + description + '\'' +
                ", quantity=" + quantity +
                ", available=" + available +
                ", location='" + location + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", id=" + id +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
