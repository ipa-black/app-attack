package org.apache.ldap.server.prefs;

import javax.naming.Name;
import javax.naming.NamingException;
import org.apache.ldap.common.name.LdapName;
/* loaded from: classes3.dex */
public class PreferencesUtils {
    static final String SYSPREF_BASE = "prefNodeName=sysPrefRoot,ou=system";

    public static Name toSysDn(String str) throws NamingException {
        LdapName ldapName = new LdapName(SYSPREF_BASE);
        String[] split = str.split("/");
        for (int i = 0; i < split.length; i++) {
            String str2 = split[i];
            if (str2 != null && !str2.trim().equals("")) {
                ldapName.add(new StringBuffer("prefNodeName=").append(split[i]).toString());
            }
        }
        return ldapName;
    }
}
