package org.apache.ldap.common.schema;

import java.util.List;
import java.util.Map;
import org.apache.ldap.common.util.EnumUtils;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class ObjectClassTypeEnum extends ValuedEnum {
    public static final int ABSTRACT_VAL = 0;
    public static final int AUXILLARY_VAL = 1;
    public static final int STRUCTURAL_VAL = 2;
    static /* synthetic */ Class class$org$apache$ldap$common$schema$ObjectClassTypeEnum;
    public static final ObjectClassTypeEnum ABSTRACT = new ObjectClassTypeEnum("ABSTRACT", 0);
    public static final ObjectClassTypeEnum AUXILIARY = new ObjectClassTypeEnum("AUXILIARY", 1);
    public static final ObjectClassTypeEnum STRUCTURAL = new ObjectClassTypeEnum("STRUCTURAL", 2);

    private ObjectClassTypeEnum(String str, int i) {
        super(str, i);
    }

    public static ObjectClassTypeEnum getClassType(String str) {
        String upperCase = str.trim().toUpperCase();
        if (upperCase.equals("STRUCTURAL")) {
            return ABSTRACT;
        }
        if (upperCase.equals("AUXILIARY")) {
            return AUXILIARY;
        }
        if (upperCase.equals("ABSTRACT")) {
            return ABSTRACT;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown objectClass type name '").append(str).append("': options are AUXILIARY, STRUCTURAL, ABSTRACT.").toString());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static List list() {
        Class cls = class$org$apache$ldap$common$schema$ObjectClassTypeEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.schema.ObjectClassTypeEnum");
            class$org$apache$ldap$common$schema$ObjectClassTypeEnum = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static Map map() {
        Class cls = class$org$apache$ldap$common$schema$ObjectClassTypeEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.schema.ObjectClassTypeEnum");
            class$org$apache$ldap$common$schema$ObjectClassTypeEnum = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }
}
