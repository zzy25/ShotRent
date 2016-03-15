package edu.xiyou.shortrent.exception;

/**
 * 权限错误
 * Created by andrew on 16-3-10.
 */
public class AuthException extends Exception{

    public AuthException(String msg){
        super(msg);
    }

}
