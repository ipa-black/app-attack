package org.apache.kerberos.jaas;

import java.util.HashMap;
import javax.security.auth.login.AppConfigurationEntry;
import javax.security.auth.login.Configuration;
/* loaded from: classes5.dex */
public class Krb5LoginConfiguration extends Configuration {
    private static AppConfigurationEntry[] configList = new AppConfigurationEntry[1];

    public void refresh() {
    }

    public Krb5LoginConfiguration() {
        configList[0] = new AppConfigurationEntry("com.sun.security.auth.module.Krb5LoginModule", AppConfigurationEntry.LoginModuleControlFlag.REQUIRED, new HashMap());
    }

    public AppConfigurationEntry[] getAppConfigurationEntry(String str) {
        return configList;
    }
}
