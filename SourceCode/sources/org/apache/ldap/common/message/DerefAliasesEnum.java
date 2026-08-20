package org.apache.ldap.common.message;

import java.util.Map;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class DerefAliasesEnum extends ValuedEnum {
    public static final String DEREFALWAYS_NAME = "always";
    public static final int DEREFALWAYS_VAL = 3;
    public static final String DEREFFINDINGBASEOBJ_NAME = "finding";
    public static final int DEREFFINDINGBASEOBJ_VAL = 2;
    public static final String DEREFINSEARCHING_NAME = "searching";
    public static final int DEREFINSEARCHING_VAL = 1;
    public static final String JNDI_PROP = "java.naming.ldap.derefAliases";
    public static final String NEVERDEREFALIASES_NAME = "never";
    public static final int NEVERDEREFALIASES_VAL = 0;
    public static final DerefAliasesEnum NEVERDEREFALIASES = new DerefAliasesEnum("never", 0);
    public static final DerefAliasesEnum DEREFINSEARCHING = new DerefAliasesEnum("searching", 1);
    public static final DerefAliasesEnum DEREFFINDINGBASEOBJ = new DerefAliasesEnum("finding", 2);
    public static final DerefAliasesEnum DEREFALWAYS = new DerefAliasesEnum("always", 3);

    private DerefAliasesEnum(String str, int i) {
        super(str, i);
    }

    public boolean derefAlways() {
        return getValue() == 3;
    }

    public boolean neverDeref() {
        return getValue() == 0;
    }

    public boolean derefInSearching() {
        int value = getValue();
        if (value != 0) {
            if (value != 1) {
                if (value != 2) {
                    if (value == 3) {
                        return true;
                    }
                    throw new IllegalArgumentException("Class has bug: check for valid enumeration values");
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public boolean derefFindingBase() {
        int value = getValue();
        if (value == 0 || value == 1) {
            return false;
        }
        if (value == 2 || value == 3) {
            return true;
        }
        throw new IllegalArgumentException("Class has bug: check for valid enumeration values");
    }

    public static DerefAliasesEnum getEnum(String str) {
        if (str == null || str.equalsIgnoreCase("always")) {
            return DEREFALWAYS;
        }
        if (str.equalsIgnoreCase("finding")) {
            return DEREFFINDINGBASEOBJ;
        }
        if (str.equalsIgnoreCase("searching")) {
            return DEREFINSEARCHING;
        }
        if (str.equalsIgnoreCase("never")) {
            return NEVERDEREFALIASES;
        }
        throw new IllegalArgumentException(new StringBuffer("Unrecognized JNDI environment property java.naming.ldap.derefAliases value: ").append(str).toString());
    }

    public static DerefAliasesEnum getEnum(Map map) {
        return getEnum((String) map.get("java.naming.ldap.derefAliases"));
    }
}
