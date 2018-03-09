package utils;

import bean.LoginUser;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.*;

public class PostJsonUtils {
    private static final Gson gson = new GsonBuilder().disableHtmlEscaping().create();
    public static LoginUser getLoginData(InputStream in, int size) {
        String json = null;
        if (in != null && size > 0) {
            ByteArrayOutputStream result = new ByteArrayOutputStream();
            byte[] buffer = new byte[size];
            int length;
            try {
                while ((length = in.read(buffer)) != -1) {
                    result.write(buffer, 0, length);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                json =  result.toString("UTF-8");
            } catch (UnsupportedEncodingException e) {
                System.out.println("UnsupportedEncodingException json: " + json);
            }

            LoginUser loginUser = gson.fromJson(json, LoginUser.class);
            return loginUser;
        }
        return null;
    }
}
