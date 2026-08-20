package org.apache.asn1.ber;

import java.util.List;
import java.util.Map;
import org.apache.commons.lang.p003enum.EnumUtils;
import org.apache.commons.lang.p003enum.ValuedEnum;
/* loaded from: classes5.dex */
public class TypeClass extends ValuedEnum {
    public static final int APPLICATION_VAL = 64;
    public static final int CONTEXT_SPECIFIC_VAL = 128;
    public static final int PRIVATE_VAL = 192;
    public static final int UNIVERSAL_VAL = 0;
    static /* synthetic */ Class class$org$apache$asn1$ber$TypeClass;
    public static final TypeClass UNIVERSAL = new TypeClass("UNIVERSAL", 0);
    public static final TypeClass APPLICATION = new TypeClass("APPLICATION", 64);
    public static final TypeClass CONTEXT_SPECIFIC = new TypeClass("CONTEXT_SPECIFIC", 128);
    public static final TypeClass PRIVATE = new TypeClass("PRIVATE", 192);

    private TypeClass(String str, int i) {
        super(str, i);
    }

    public static TypeClass getTypeClass(String str) {
        TypeClass typeClass = APPLICATION;
        if (str == typeClass.getName()) {
            return typeClass;
        }
        TypeClass typeClass2 = CONTEXT_SPECIFIC;
        if (str == typeClass2.getName()) {
            return typeClass2;
        }
        TypeClass typeClass3 = PRIVATE;
        if (str == typeClass3.getName()) {
            return typeClass3;
        }
        TypeClass typeClass4 = UNIVERSAL;
        if (str == typeClass4.getName()) {
            return typeClass4;
        }
        if (str.equalsIgnoreCase(typeClass3.getName())) {
            return typeClass3;
        }
        if (str.equalsIgnoreCase(typeClass4.getName())) {
            return typeClass4;
        }
        if (str.equalsIgnoreCase(typeClass.getName())) {
            return typeClass;
        }
        if (str.equalsIgnoreCase(typeClass2.getName())) {
            return typeClass2;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown type class name").append(str).toString());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static List list() {
        Class cls = class$org$apache$asn1$ber$TypeClass;
        if (cls == null) {
            cls = class$("org.apache.asn1.ber.TypeClass");
            class$org$apache$asn1$ber$TypeClass = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static Map map() {
        Class cls = class$org$apache$asn1$ber$TypeClass;
        if (cls == null) {
            cls = class$("org.apache.asn1.ber.TypeClass");
            class$org$apache$asn1$ber$TypeClass = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }

    public static TypeClass getTypeClass(int i) {
        int i2 = i & 192;
        if (i2 != 0) {
            if (i2 != 64) {
                if (i2 != 128) {
                    if (i2 != 192) {
                        return null;
                    }
                    return PRIVATE;
                }
                return CONTEXT_SPECIFIC;
            }
            return APPLICATION;
        }
        return UNIVERSAL;
    }
}
