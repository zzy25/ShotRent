package edu.xiyou.shortrent.model;

import java.util.Date;

public class Order extends BaseModel{
    private Integer id;

    private Integer hourseid;

    private Integer owerid;
    private String owerName;
    private String owerMobile;

    private Integer customer;
    private String customerName;
    private String customerMobile;

    private Integer amount;

    private Date begintime;

    private Date endtime;

    private Short terminate;

    private String address;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getHourseid() {
        return hourseid;
    }

    public void setHourseid(Integer hourseid) {
        this.hourseid = hourseid;
    }

    public Integer getOwerid() {
        return owerid;
    }

    public void setOwerid(Integer owerid) {
        this.owerid = owerid;
    }

    public Integer getCustomer() {
        return customer;
    }

    public void setCustomer(Integer customer) {
        this.customer = customer;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Short getTerminate() {
        return terminate;
    }

    public void setTerminate(Short terminate) {
        this.terminate = terminate;
    }

    public String getOwerName() {
        return owerName;
    }

    public void setOwerName(String owerName) {
        this.owerName = owerName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getOwerMobile() {
        return owerMobile;
    }

    public void setOwerMobile(String owerMobile) {
        this.owerMobile = owerMobile;
    }

    public String getCustomerMobile() {
        return customerMobile;
    }

    public void setCustomerMobile(String customerMobile) {
        this.customerMobile = customerMobile;
    }
}