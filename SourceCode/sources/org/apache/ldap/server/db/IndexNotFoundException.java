package org.apache.ldap.server.db;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class IndexNotFoundException extends NamingException {
    private static final long serialVersionUID = 3906088970608981815L;
    private final String indexName;

    public IndexNotFoundException(String str) {
        super(new StringBuffer("Cannot efficiently search the DIB w/o an index on attribute ").append(str).append("\n. To allow such searches please contact the directory\nadministrator to create the index or to enable referrals on searches using these\nattributes to a replica with the required set of indices.").toString());
        this.indexName = str;
    }

    public IndexNotFoundException(String str, String str2) {
        super(str);
        this.indexName = str2;
    }

    public IndexNotFoundException(String str, String str2, Throwable th) {
        this(str, str2);
        setRootCause(th);
    }

    public String getIndexName() {
        return this.indexName;
    }
}
