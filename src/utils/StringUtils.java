package utils;

public class StringUtils {
    public static boolean isEmpty(String str) {
            return null == str  || str.length()==0 || false;
    }

    public static String defaultValue(String content,String defaultValue){
        if(isEmpty(content)){
            return defaultValue;
        }
        return content;
    }
}
