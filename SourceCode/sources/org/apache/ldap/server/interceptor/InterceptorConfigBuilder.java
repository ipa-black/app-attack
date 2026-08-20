package org.apache.ldap.server.interceptor;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class InterceptorConfigBuilder {
    public static Map build(Map map, String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            String obj = entry.getKey().toString();
            if (obj.startsWith(str) && obj.length() > str.length()) {
                String substring = obj.substring(str.length());
                if (substring.indexOf(35) >= 0) {
                    if (substring.charAt(0) == '.' || substring.charAt(0) == '#') {
                        substring = substring.substring(1);
                    }
                    hashMap.put(substring, entry.getValue());
                }
            }
        }
        return hashMap;
    }

    private InterceptorConfigBuilder() {
    }
}
