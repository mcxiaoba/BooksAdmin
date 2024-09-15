package org.base23.web.Model.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import org.hibernate.validator.constraints.Length;
import org.springframework.data.annotation.Id;

/**
 *图书馆类别实体类
 */
@TableName("wms_category")
public class WmsCategoryEntity {
    private static final long serialVersionUID = 1L;

    @Id
    @TableId(type = IdType.AUTO) // 指定主键字段
    private Integer categoryId;


    @Length(max = 50)
    @TableField(value = "category_name") // 指定字段映射
    private String categoryName;

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public String toString() {
        return "WmsCategoryEntity{" +
                "categoryId=" + categoryId +
                ", categoryName='" + categoryName + '\'' +
                '}';
    }
}
