package edu.xiyou.shotrent.model;

import java.util.Date;

public class House extends BaseModel{
    private Integer id;

    private Integer owerid;

    private String mobile;

    private String tel;

    private Short housetype;

    private String address;

    private Integer area;

    private Integer price;

    private String imagepath;

    private String furniture;

    private Short online;

    private Short checked;

    private Short rented;

    private Date createtime;

    private Date updatetime;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOwerid() {
        return owerid;
    }

    public void setOwerid(Integer owerid) {
        this.owerid = owerid;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public Short getHousetype() {
        return housetype;
    }

    public void setHousetype(Short housetype) {
        this.housetype = housetype;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath == null ? null : imagepath.trim();
    }

    public String getFurniture() {
        return furniture;
    }

    public void setFurniture(String furniture) {
        this.furniture = furniture == null ? null : furniture.trim();
    }

    public Short getOnline() {
        return online;
    }

    public void setOnline(Short online) {
        this.online = online;
    }

    public Short getChecked() {
        return checked;
    }

    public void setChecked(Short checked) {
        this.checked = checked;
    }

    public Short getRented() {
        return rented;
    }

    public void setRented(Short rented) {
        this.rented = rented;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}