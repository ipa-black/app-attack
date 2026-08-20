package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.util.Map;
import org.apache.ldap.common.message.DerefAliasesEnum;
/* loaded from: classes3.dex */
public class ScopeNode extends AbstractExprNode {
    private final String baseDn;
    private final DerefAliasesEnum derefAliases;
    private final int scope;

    @Override // org.apache.ldap.common.filter.ExprNode
    public boolean isLeaf() {
        return true;
    }

    public ScopeNode(DerefAliasesEnum derefAliasesEnum, String str, int i) {
        super(7);
        this.scope = i;
        this.baseDn = str;
        this.derefAliases = derefAliasesEnum;
    }

    public ScopeNode(Map map, String str, int i) {
        super(7);
        this.scope = i;
        this.baseDn = str;
        this.derefAliases = DerefAliasesEnum.getEnum(map);
    }

    public int getScope() {
        return this.scope;
    }

    public String getBaseDn() {
        return this.baseDn;
    }

    public DerefAliasesEnum getDerefAliases() {
        return this.derefAliases;
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        int i = this.scope;
        if (i == 0) {
            stringBuffer.append("OBJECT_SCOPE");
        } else if (i == 1) {
            stringBuffer.append("ONELEVEL_SCOPE");
        } else if (i == 2) {
            stringBuffer.append("SUBTREE_SCOPE (Estimated)");
        } else {
            stringBuffer.append("UNKNOWN");
        }
        if (getAnnotations().containsKey(NewHtcHomeBadger.COUNT)) {
            stringBuffer.append(" [");
            stringBuffer.append(getAnnotations().get(NewHtcHomeBadger.COUNT).toString());
            stringBuffer.append(']');
        }
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void accept(FilterVisitor filterVisitor) {
        if (filterVisitor.canVisit(this)) {
            filterVisitor.visit(this);
        }
    }
}
