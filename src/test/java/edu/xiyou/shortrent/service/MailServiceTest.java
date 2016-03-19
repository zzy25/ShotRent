package edu.xiyou.shortrent.service;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.junit.Test;

/**
 * Created by zhuoxiong on 2016/3/17.
 */
public class MailServiceTest {
    @Test
    public void mail(){
        SimpleEmail email = new SimpleEmail();
        email.setHostName("smtp.qq.com");
        try {
            email.addTo("1726140433@qq.com");
            email.setAuthentication("630841816@qq.com", "perfect456");
            email.setFrom("630841816@qq.com");
            email.setSubject("JAVA MAIL TEST");
            email.setMsg("刚子逗比");
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }
}
