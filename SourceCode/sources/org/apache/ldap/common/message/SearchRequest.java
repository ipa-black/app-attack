package org.apache.ldap.common.message;

import java.util.Collection;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface SearchRequest extends ManyReplyRequest {
    public static final MessageTypeEnum TYPE = MessageTypeEnum.SEARCHREQUEST;
    public static final MessageTypeEnum[] RESPONSE_TYPES = {SearchResponseDone.TYPE, SearchResponseEntry.TYPE, SearchResponseReference.TYPE, ExtendedResponse.TYPE};

    void addAttribute(String str);

    Collection getAttributes();

    String getBase();

    DerefAliasesEnum getDerefAliases();

    ExprNode getFilter();

    @Override // org.apache.ldap.common.message.ManyReplyRequest
    MessageTypeEnum[] getResponseTypes();

    ScopeEnum getScope();

    int getSizeLimit();

    int getTimeLimit();

    boolean getTypesOnly();

    void removeAttribute(String str);

    void setBase(String str);

    void setDerefAliases(DerefAliasesEnum derefAliasesEnum);

    void setFilter(ExprNode exprNode);

    void setScope(ScopeEnum scopeEnum);

    void setSizeLimit(int i);

    void setTimeLimit(int i);

    void setTypesOnly(boolean z);
}
