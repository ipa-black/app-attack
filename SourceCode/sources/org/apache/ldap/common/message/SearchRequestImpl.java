package org.apache.ldap.common.message;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.apache.ldap.common.filter.BranchNormalizedVisitor;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public class SearchRequestImpl extends AbstractRequest implements SearchRequest {
    private Collection attributes;
    private String baseDn;
    private DerefAliasesEnum derefAliases;
    private ExprNode filter;
    private ScopeEnum scope;
    private int sizeLimit;
    private int timeLimit;
    private boolean typesOnly;

    public SearchRequestImpl(int i) {
        super(i, TYPE, true);
        this.attributes = new ArrayList();
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public Collection getAttributes() {
        return Collections.unmodifiableCollection(this.attributes);
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public String getBase() {
        return this.baseDn;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setBase(String str) {
        lockCheck("Attempt to alter search base of locked SearchRequest!");
        this.baseDn = str;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public DerefAliasesEnum getDerefAliases() {
        return this.derefAliases;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setDerefAliases(DerefAliasesEnum derefAliasesEnum) {
        lockCheck("Attempt to alter alias dereferencing mode of locked SearchRequest!");
        this.derefAliases = derefAliasesEnum;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public ExprNode getFilter() {
        return this.filter;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setFilter(ExprNode exprNode) {
        lockCheck("Attempt to alter search filter of locked SearchRequest!");
        this.filter = exprNode;
    }

    @Override // org.apache.ldap.common.message.SearchRequest, org.apache.ldap.common.message.ManyReplyRequest
    public MessageTypeEnum[] getResponseTypes() {
        return (MessageTypeEnum[]) RESPONSE_TYPES.clone();
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public ScopeEnum getScope() {
        return this.scope;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setScope(ScopeEnum scopeEnum) {
        lockCheck("Attempt to alter search scope of locked SearchReqest!");
        this.scope = scopeEnum;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public int getSizeLimit() {
        return this.sizeLimit;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setSizeLimit(int i) {
        lockCheck("Attempt to alter size limit on locked SearchRequest!");
        this.sizeLimit = i;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public int getTimeLimit() {
        return this.timeLimit;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setTimeLimit(int i) {
        lockCheck("Attempt to alter time limit on locked SearchRequest!");
        this.timeLimit = i;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public boolean getTypesOnly() {
        return this.typesOnly;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void setTypesOnly(boolean z) {
        lockCheck("Attempt to alter typesOnly flag of locked SearchRequest!");
        this.typesOnly = z;
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void addAttribute(String str) {
        lockCheck("Attempt to add return attribute to locked SearchRequest!");
        this.attributes.add(str);
    }

    @Override // org.apache.ldap.common.message.SearchRequest
    public void removeAttribute(String str) {
        lockCheck("Attempt to remove return attribute from locked SearchRequest!");
        this.attributes.remove(str);
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        Collection collection;
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            SearchRequest searchRequest = (SearchRequest) obj;
            if (searchRequest.getBase().equals(this.baseDn) && searchRequest.getDerefAliases() == this.derefAliases && searchRequest.getScope() == this.scope && searchRequest.getSizeLimit() == this.sizeLimit && searchRequest.getTimeLimit() == this.timeLimit && searchRequest.getTypesOnly() == this.typesOnly) {
                if (searchRequest.getAttributes() != null || (collection = this.attributes) == null || collection.size() <= 0) {
                    if (searchRequest.getAttributes() == null || this.attributes != null || searchRequest.getAttributes().size() <= 0) {
                        if (searchRequest.getAttributes() != null && this.attributes != null) {
                            if (searchRequest.getAttributes().size() != this.attributes.size()) {
                                return false;
                            }
                            for (Object obj2 : this.attributes) {
                                if (!searchRequest.getAttributes().contains(obj2)) {
                                    return false;
                                }
                            }
                        }
                        BranchNormalizedVisitor branchNormalizedVisitor = new BranchNormalizedVisitor();
                        searchRequest.getFilter().accept(branchNormalizedVisitor);
                        this.filter.accept(branchNormalizedVisitor);
                        StringBuffer stringBuffer = new StringBuffer();
                        this.filter.printToBuffer(stringBuffer);
                        String stringBuffer2 = stringBuffer.toString();
                        stringBuffer.setLength(0);
                        searchRequest.getFilter().printToBuffer(stringBuffer);
                        return stringBuffer2.equals(stringBuffer.toString());
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
