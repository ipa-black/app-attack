package org.apache.ldap.server.db;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import org.apache.ldap.common.message.LockableAttributesImpl;
/* loaded from: classes3.dex */
public class SearchResultEnumeration implements NamingEnumeration {
    private final String[] attrIds;
    private Database db;
    private final NamingEnumeration underlying;

    public SearchResultEnumeration(String[] strArr, NamingEnumeration namingEnumeration, Database database) {
        this.db = database;
        this.attrIds = strArr;
        this.underlying = namingEnumeration;
    }

    public void close() throws NamingException {
        this.underlying.close();
    }

    public boolean hasMore() throws NamingException {
        return this.underlying.hasMore();
    }

    public Object next() throws NamingException {
        Attributes lockableAttributesImpl;
        IndexRecord indexRecord = (IndexRecord) this.underlying.next();
        String entryUpdn = this.db.getEntryUpdn(indexRecord.getEntryId());
        if (indexRecord.getAttributes() == null) {
            indexRecord.setAttributes(this.db.lookup(indexRecord.getEntryId()));
        }
        if (this.attrIds == null) {
            lockableAttributesImpl = (Attributes) indexRecord.getAttributes().clone();
        } else {
            lockableAttributesImpl = new LockableAttributesImpl();
            for (int i = 0; i < this.attrIds.length; i++) {
                if (indexRecord.getAttributes().get(this.attrIds[i]) != null) {
                    lockableAttributesImpl.put((Attribute) indexRecord.getAttributes().get(this.attrIds[i]).clone());
                }
            }
        }
        return new DbSearchResult(indexRecord.getEntryId(), entryUpdn, null, lockableAttributesImpl);
    }

    public boolean hasMoreElements() {
        return this.underlying.hasMoreElements();
    }

    public Object nextElement() {
        return this.underlying.nextElement();
    }
}
