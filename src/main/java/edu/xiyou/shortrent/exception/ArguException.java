package edu.xiyou.shortrent.exception;

/**
 * 参数异常，方法进行参数检查的时候，可能会遇到不符合规则的参数，可以抛出此异常
 * Created by andrew on 16-3-10.
 */

public class ArguException extends Exception{

    public ArguException(String msg){
        super(msg);
    }
}
