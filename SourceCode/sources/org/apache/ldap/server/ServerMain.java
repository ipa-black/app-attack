package org.apache.ldap.server;

import java.io.File;
import java.util.Properties;
import javax.naming.NamingException;
import javax.naming.directory.InitialDirContext;
import org.apache.ldap.common.util.PropertiesUtils;
import org.apache.ldap.server.jndi.EnvKeys;
/* loaded from: classes3.dex */
public class ServerMain {
    private static final int LDAP_PORT = 389;

    public static void main(String[] strArr) {
        Properties properties;
        long currentTimeMillis = System.currentTimeMillis();
        if (strArr.length > 0) {
            System.out.println(new StringBuffer("server: loading properties from ").append(strArr[0]).toString());
            properties = PropertiesUtils.getProperties(new File(strArr[0]));
        } else {
            System.out.println("server: using default properties ...");
            properties = new Properties();
        }
        if (!properties.containsKey(EnvKeys.LDAP_PORT)) {
            properties.setProperty(EnvKeys.LDAP_PORT, String.valueOf((int) LDAP_PORT));
        }
        properties.setProperty("java.naming.provider.url", SystemPartition.SUFFIX);
        properties.setProperty("java.naming.factory.initial", "org.apache.ldap.server.jndi.ServerContextFactory");
        try {
            new InitialDirContext(properties);
        } catch (NamingException e2) {
            e2.printStackTrace();
        }
        System.out.println(new StringBuffer("server: started in ").append(System.currentTimeMillis() - currentTimeMillis).append(" milliseconds").toString());
        while (true) {
            try {
                Thread.sleep(20000L);
                try {
                    properties.setProperty(EnvKeys.SYNC, "true");
                    new InitialDirContext(properties);
                } catch (NamingException e3) {
                    e3.printStackTrace();
                }
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }
}
