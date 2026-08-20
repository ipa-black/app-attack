package org.apache.ldap.server.authn;

import java.io.FileInputStream;
import java.util.Hashtable;
import java.util.Properties;
import javax.naming.NamingException;
import org.apache.ldap.common.util.StringTools;
import org.apache.ldap.server.jndi.EnvKeys;
/* loaded from: classes3.dex */
public class AuthenticatorConfigBuilder {
    private static final GenericAuthenticatorConfig[] EMPTY = new GenericAuthenticatorConfig[0];

    public static GenericAuthenticatorConfig getAuthenticatorConfig(String str, Hashtable hashtable) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer();
        GenericAuthenticatorConfig genericAuthenticatorConfig = new GenericAuthenticatorConfig();
        genericAuthenticatorConfig.setAuthenticatorName(str);
        stringBuffer.setLength(0);
        stringBuffer.append(EnvKeys.AUTHENTICATOR_CLASS).append(str);
        String str2 = (String) hashtable.get(stringBuffer.toString());
        if (str2 != null) {
            genericAuthenticatorConfig.setAuthenticatorClass(str2);
        }
        stringBuffer.setLength(0);
        stringBuffer.append(EnvKeys.AUTHENTICATOR_PROPERTIES).append(str);
        String str3 = (String) hashtable.get(stringBuffer.toString());
        if (str3 != null) {
            try {
                Properties properties = genericAuthenticatorConfig.getProperties();
                properties.load(new FileInputStream(str3));
                genericAuthenticatorConfig.setProperties(properties);
            } catch (Exception e2) {
                throw new NamingException(e2.getMessage());
            }
        }
        return genericAuthenticatorConfig;
    }

    public static GenericAuthenticatorConfig[] getAuthenticatorConfigs(Hashtable hashtable) throws NamingException {
        String str = (String) hashtable.get(EnvKeys.AUTHENTICATORS);
        if (str == null || str.trim().length() == 0) {
            return EMPTY;
        }
        String[] split = StringTools.deepTrim(str).split(" ");
        int length = split.length;
        GenericAuthenticatorConfig[] genericAuthenticatorConfigArr = new GenericAuthenticatorConfig[length];
        for (int i = 0; i < length; i++) {
            genericAuthenticatorConfigArr[i] = getAuthenticatorConfig(split[i], hashtable);
        }
        return genericAuthenticatorConfigArr;
    }
}
