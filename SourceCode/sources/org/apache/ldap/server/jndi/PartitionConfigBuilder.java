package org.apache.ldap.server.jndi;

import java.util.Enumeration;
import java.util.Hashtable;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import org.apache.ldap.common.message.LockableAttributeImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.ArrayUtils;
import org.apache.ldap.common.util.StringTools;
import org.apache.ldap.server.ContextPartitionConfig;
/* loaded from: classes3.dex */
public class PartitionConfigBuilder {
    private static final ContextPartitionConfig[] EMPTY = new ContextPartitionConfig[0];

    public static ContextPartitionConfig getContextPartitionConfig(String str, Hashtable hashtable) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer();
        ContextPartitionConfig contextPartitionConfig = new ContextPartitionConfig();
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        contextPartitionConfig.setId(str);
        contextPartitionConfig.setAttributes(lockableAttributesImpl);
        stringBuffer.append(EnvKeys.SUFFIX).append(str);
        String str2 = (String) hashtable.get(stringBuffer.toString());
        if (str2 != null) {
            str2 = new LdapName(str2).toString();
        }
        contextPartitionConfig.setSuffix(str2);
        stringBuffer.setLength(0);
        stringBuffer.append(EnvKeys.PARTITION_CLASS).append(str);
        String str3 = (String) hashtable.get(stringBuffer.toString());
        if (str3 != null) {
            contextPartitionConfig.setPartitionClass(str3);
        }
        stringBuffer.setLength(0);
        stringBuffer.append(EnvKeys.PARTITION_PROPERTIES).append(str);
        String str4 = (String) hashtable.get(stringBuffer.toString());
        if (str4 != null) {
            contextPartitionConfig.setProperties(str4);
        }
        stringBuffer.setLength(0);
        stringBuffer.append(EnvKeys.INDICES).append(str);
        String str5 = (String) hashtable.get(stringBuffer.toString());
        if (str5 == null || str5.trim().length() == 0) {
            contextPartitionConfig.setIndices(ArrayUtils.EMPTY_STRING_ARRAY);
        } else {
            contextPartitionConfig.setIndices(StringTools.deepTrim(str5).split(" "));
        }
        stringBuffer.setLength(0);
        stringBuffer.append(EnvKeys.ATTRIBUTES).append(str);
        Object stringBuffer2 = stringBuffer.toString();
        if (hashtable.containsKey(stringBuffer2)) {
            contextPartitionConfig.setAttributes((Attributes) hashtable.get(stringBuffer2));
            return contextPartitionConfig;
        }
        stringBuffer.append(".");
        String stringBuffer3 = stringBuffer.toString();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str6 = (String) keys.nextElement();
            if (str6.startsWith(stringBuffer3)) {
                LockableAttributeImpl lockableAttributeImpl = new LockableAttributeImpl(lockableAttributesImpl, str6.substring(stringBuffer3.length()));
                String str7 = (String) hashtable.get(str6);
                if (str7 == null || str7.trim().length() == 0) {
                    lockableAttributesImpl.put(lockableAttributeImpl);
                } else {
                    for (String str8 : StringTools.deepTrim(str7).split(" ")) {
                        lockableAttributeImpl.add(str8);
                    }
                    lockableAttributesImpl.put(lockableAttributeImpl);
                }
            }
        }
        return contextPartitionConfig;
    }

    public static ContextPartitionConfig[] getContextPartitionConfigs(Hashtable hashtable) throws NamingException {
        String str = (String) hashtable.get(EnvKeys.PARTITIONS);
        if (str == null || str.trim().length() == 0) {
            return EMPTY;
        }
        String[] split = StringTools.deepTrim(str).split(" ");
        int length = split.length;
        ContextPartitionConfig[] contextPartitionConfigArr = new ContextPartitionConfig[length];
        for (int i = 0; i < length; i++) {
            contextPartitionConfigArr[i] = getContextPartitionConfig(split[i], hashtable);
        }
        return contextPartitionConfigArr;
    }
}
