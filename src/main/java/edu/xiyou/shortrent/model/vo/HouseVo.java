package edu.xiyou.shortrent.model.vo;

import edu.xiyou.shortrent.model.BaseModel;

/**
 * 查找房子是的匹配条件的model
 * Created by andrew on 16-3-11.
 */
public class HouseVo extends BaseModel{

    private Integer maxArea;        //房屋面积的上限
    private Integer minArea;        //房屋面积的下限
    private Integer maxPrice;       //房屋价格的上限
    private Integer minPrice;       //房屋价格的下限
    private String addressContain;  //房屋介绍中包含的内容
    private Short houseType;        //房屋的类型

    public Integer getMaxArea() {
        return maxArea;
    }

    public void setMaxArea(Integer maxArea) {
        this.maxArea = maxArea;
    }

    public Integer getMinArea() {
        return minArea;
    }

    public void setMinArea(Integer minArea) {
        this.minArea = minArea;
    }

    public Integer getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Integer maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Integer getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Integer minPrice) {
        this.minPrice = minPrice;
    }

    public String getAddressContain() {
        return addressContain;
    }

    public void setAddressContain(String addressContain) {
        this.addressContain = addressContain;
    }

    public Short getHouseType() {
        return houseType;
    }

    public void setHouseType(Short houseType) {
        this.houseType = houseType;
    }
}
