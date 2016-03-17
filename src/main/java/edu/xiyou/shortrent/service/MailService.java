package edu.xiyou.shortrent.service;

/**
 * Created by zhuoxiong on 2016/3/17.
 */
public interface MailService {

    /**
     * 发送邮件
     * @param toMail 收件人邮箱
     * @param subject 邮件主题
     * @param msg 邮件消息
     */
    void sendMail(String toMail,String subject, String msg);

}
