package test;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class TestProperties {
    public static void main(String[] args) throws IOException {
        //System.out.println(TestProperties.class.getClassLoader().getResourceAsStream("config/jdbc.properties"));
        InputStream inputStream = TestProperties.class.getClassLoader().getResourceAsStream("config/jdbc.properties");
        Properties properties = new Properties();

        properties.load(inputStream);
        System.out.println(properties);
    }
}
