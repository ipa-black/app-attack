package org.apache.ldap.server;

import javax.naming.Name;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.SearchEngine;
/* loaded from: classes3.dex */
public class ApplicationPartition extends AbstractContextPartition {
    private Name normalizedSuffix;
    private Name upSuffix;

    public ApplicationPartition(Name name, Name name2, Database database, SearchEngine searchEngine, AttributeType[] attributeTypeArr) throws NamingException {
        super(database, searchEngine, attributeTypeArr);
        this.normalizedSuffix = name2;
        this.upSuffix = name;
    }

    @Override // org.apache.ldap.server.ContextPartition
    public Name getSuffix(boolean z) {
        if (z) {
            return this.normalizedSuffix;
        }
        return this.upSuffix;
    }

    @Override // org.apache.ldap.server.BackingStore
    public boolean isSuffix(Name name) throws NamingException {
        return this.normalizedSuffix.equals(name);
    }
}
