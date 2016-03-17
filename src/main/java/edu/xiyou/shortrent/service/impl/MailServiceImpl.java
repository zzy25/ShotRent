package edu.xiyou.shortrent.service.impl;

import edu.xiyou.shortrent.service.MailService;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.springframework.stereotype.Service;

/**
 * Created by zhuoxiong on 2016/3/17.
 */
@Service
public class MailServiceImpl implements MailService{

    @Override
    public void sendMail(String toMail, String subject, String msg) {

        SimpleEmail email = new SimpleEmail();
        email.setHostName("smtp.qq.com");
        try {
            email.addTo(toMail);
            email.setAuthentication("630841816@qq.com", "perfect456");
            email.setFrom("短租网");
            email.setSubject(subject);
            email.setMsg(msg);
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }

    }
}
