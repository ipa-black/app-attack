package org.apache.ldap.common.message;

import javax.naming.directory.SearchControls;
import org.apache.ldap.common.util.ValuedEnum;
/* loaded from: classes3.dex */
public class ScopeEnum extends ValuedEnum {
    public static final int BASEOBJECT_LDAPVAL = 0;
    public static final int BASEOBJECT_VAL = 0;
    public static final int SINGLELEVEL_LDAPVAL = 1;
    public static final int SINGLELEVEL_VAL = 1;
    public static final int WHOLESUBTREE_LDAPVAL = 2;
    public static final int WHOLESUBTREE_VAL = 2;
    public static final ScopeEnum BASEOBJECT = new ScopeEnum("BASEOBJECT", 0);
    public static final ScopeEnum SINGLELEVEL = new ScopeEnum("SINGLELEVEL", 1);
    public static final ScopeEnum WHOLESUBTREE = new ScopeEnum("WHOLESUBTREE", 2);

    private ScopeEnum(String str, int i) {
        super(str, i);
    }

    public static ScopeEnum getScope(SearchControls searchControls) {
        int searchScope = searchControls.getSearchScope();
        if (searchScope != 0) {
            if (searchScope != 1) {
                if (searchScope == 2) {
                    return WHOLESUBTREE;
                }
                throw new IllegalArgumentException(new StringBuffer("Unrecognized search scope in SearchControls: ").append(searchControls.getSearchScope()).toString());
            }
            return SINGLELEVEL;
        }
        return BASEOBJECT;
    }

    public int getLdapValue() {
        int value = getValue();
        if (value != 0) {
            if (value != 1) {
                if (value == 2) {
                    return 2;
                }
                throw new IllegalArgumentException(new StringBuffer("Unrecognized value: ").append(getValue()).toString());
            }
            return 1;
        }
        return 0;
    }
}
