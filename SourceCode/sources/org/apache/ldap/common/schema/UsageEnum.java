package org.apache.ldap.common.schema;

import java.util.List;
import java.util.Map;
import org.apache.ldap.common.util.EnumUtils;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class UsageEnum extends ValuedEnum {
    public static final int DIRECTORYOPERATION_VAL = 1;
    public static final int DISTRIBUTEDOPERATION_VAL = 2;
    public static final int DSAOPERATION_VAL = 3;
    public static final int USERAPPLICATIONS_VAL = 0;
    static /* synthetic */ Class class$org$apache$ldap$common$schema$UsageEnum;
    public static final UsageEnum USERAPPLICATIONS = new UsageEnum("userApplications", 0);
    public static final UsageEnum DIRECTORYOPERATION = new UsageEnum("directoryOperation", 1);
    public static final UsageEnum DISTRIBUTEDOPERATION = new UsageEnum("distributedOperation", 2);
    public static final UsageEnum DSAOPERATION = new UsageEnum("dSAOperation", 3);

    private UsageEnum(String str, int i) {
        super(str, i);
    }

    public static UsageEnum getUsage(String str) {
        UsageEnum usageEnum = USERAPPLICATIONS;
        if (str.equalsIgnoreCase(usageEnum.getName())) {
            return usageEnum;
        }
        UsageEnum usageEnum2 = DIRECTORYOPERATION;
        if (str.equalsIgnoreCase(usageEnum2.getName())) {
            return usageEnum2;
        }
        UsageEnum usageEnum3 = DISTRIBUTEDOPERATION;
        if (str.equalsIgnoreCase(usageEnum3.getName())) {
            return usageEnum3;
        }
        UsageEnum usageEnum4 = DSAOPERATION;
        if (str.equalsIgnoreCase(usageEnum4.getName())) {
            return usageEnum4;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown attributeType usage string").append(str).toString());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static List list() {
        Class cls = class$org$apache$ldap$common$schema$UsageEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.schema.UsageEnum");
            class$org$apache$ldap$common$schema$UsageEnum = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static Map map() {
        Class cls = class$org$apache$ldap$common$schema$UsageEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.schema.UsageEnum");
            class$org$apache$ldap$common$schema$UsageEnum = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }
}
