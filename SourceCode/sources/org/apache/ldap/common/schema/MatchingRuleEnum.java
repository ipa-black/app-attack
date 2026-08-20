package org.apache.ldap.common.schema;

import java.util.List;
import java.util.Map;
import org.apache.ldap.common.util.EnumUtils;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class MatchingRuleEnum extends ValuedEnum {
    public static final int EQUALITY_VAL = 1;
    public static final int ORDERING_VAL = 0;
    public static final int SUBSTRING_VAL = 2;
    static /* synthetic */ Class class$org$apache$ldap$common$schema$MatchingRuleEnum;
    public static final MatchingRuleEnum ORDERING = new MatchingRuleEnum("ORDERING", 0);
    public static final MatchingRuleEnum EQUALITY = new MatchingRuleEnum("EQUALITY", 1);
    public static final MatchingRuleEnum SUBSTRING = new MatchingRuleEnum("SUBSTRING", 2);

    private MatchingRuleEnum(String str, int i) {
        super(str, i);
    }

    public static MatchingRuleEnum getUsage(String str) {
        MatchingRuleEnum matchingRuleEnum = EQUALITY;
        if (str.equalsIgnoreCase(matchingRuleEnum.getName())) {
            return matchingRuleEnum;
        }
        MatchingRuleEnum matchingRuleEnum2 = ORDERING;
        if (str.equalsIgnoreCase(matchingRuleEnum2.getName())) {
            return matchingRuleEnum2;
        }
        MatchingRuleEnum matchingRuleEnum3 = SUBSTRING;
        if (str.equalsIgnoreCase(matchingRuleEnum3.getName())) {
            return matchingRuleEnum3;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown matching rule usage string").append(str).toString());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static List list() {
        Class cls = class$org$apache$ldap$common$schema$MatchingRuleEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.schema.MatchingRuleEnum");
            class$org$apache$ldap$common$schema$MatchingRuleEnum = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static Map map() {
        Class cls = class$org$apache$ldap$common$schema$MatchingRuleEnum;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.schema.MatchingRuleEnum");
            class$org$apache$ldap$common$schema$MatchingRuleEnum = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }
}
