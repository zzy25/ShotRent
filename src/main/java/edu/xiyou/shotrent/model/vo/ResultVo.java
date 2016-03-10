package edu.xiyou.shotrent.model.vo;

import edu.xiyou.shotrent.model.BaseModel;

/**
 * Created by andrew on 16-3-9.
 */
public class ResultVo<E> extends BaseModel{
    private E element;
    private boolean approved;
    private String msg;

    public E getElement() {
        return element;
    }

    public void setElement(E element) {
        this.element = element;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public boolean isApproved() {
        return approved;
    }

    public void setApproved(boolean approved) {
        this.approved = approved;
    }
}
