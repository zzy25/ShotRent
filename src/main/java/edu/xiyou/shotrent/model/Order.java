package edu.xiyou.shotrent.model;

import java.util.Date;

public class Order extends BaseModel{
    private Integer id;

    private Integer hourseid;

    private Integer owerid;

    private Integer customer;

    private Integer amount;

    private Date begintime;

    private Date endtime;

    private Short terminate;

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
}