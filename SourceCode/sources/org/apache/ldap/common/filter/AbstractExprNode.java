package org.apache.ldap.common.filter;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class AbstractExprNode implements ExprNode {
    public static final int AND = 10;
    public static final int APPROXIMATE = 5;
    public static final int ASSERTION = 8;
    public static final int EQUALITY = 0;
    public static final int EXTENSIBLE = 6;
    public static final int GREATEREQ = 3;
    public static final int LESSEQ = 4;
    public static final int NOT = 11;
    public static final int OR = 9;
    public static final int PRESENCE = 1;
    public static final int SCOPE = 7;
    public static final int SUBSTRING = 2;
    private Map m_annotations;
    private final int m_assertionType;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractExprNode(int i) {
        this.m_assertionType = i;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                return;
            default:
                throw new IllegalArgumentException("Attribute value assertion type is undefined.");
        }
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public Object get(Object obj) {
        if (getAnnotations() == null) {
            return null;
        }
        return getAnnotations().get(obj);
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void set(Object obj, Object obj2) {
        if (getAnnotations() == null) {
            this.m_annotations = new HashMap(2);
        }
        getAnnotations().put(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map getAnnotations() {
        return this.m_annotations;
    }

    public final int getAssertionType() {
        return this.m_assertionType;
    }

    public static final String getOperationString(int i) {
        switch (i) {
            case 0:
            case 2:
                return "=";
            case 1:
                return "=*";
            case 3:
                return ">=";
            case 4:
                return "<=";
            case 5:
                return "~=";
            case 6:
                return "extensible";
            default:
                throw new IllegalArgumentException("Attribute value assertion type is undefined.");
        }
    }
}
