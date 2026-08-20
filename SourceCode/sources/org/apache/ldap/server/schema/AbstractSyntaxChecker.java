package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.SyntaxChecker;
/* loaded from: classes3.dex */
public abstract class AbstractSyntaxChecker implements SyntaxChecker {
    private String oid;

    public AbstractSyntaxChecker(String str) {
        this.oid = str;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public String getSyntaxOid() {
        return this.oid;
    }
}
