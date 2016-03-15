package edu.xiyou.shortrent.utils;

import org.junit.Test;

/**
 * Created by andrew on 16-3-11.
 */
public class ArguUtilsTest {

    public static class ModelA{
        private String a;
        private Integer b;

        public String getA() {
            return a;
        }

        public void setA(String a) {
            this.a = a;
        }

        public Integer getB() {
            return b;
        }

        public void setB(Integer b) {
            this.b = b;
        }
    }

    @Test
    public void testFiedldAllNull(){
        ModelA modelA = new ModelA();
        modelA.setA("a");
        System.out.println(ArguUtils.fieldAllNull(modelA, ModelA.class));
    }
}
