package org.apache.ldap.server.db;

import java.math.BigInteger;
import javax.naming.directory.Attributes;
import javax.naming.directory.SearchResult;
/* loaded from: classes3.dex */
public class DbSearchResult extends SearchResult {
    private static final long serialVersionUID = 3976739172700860977L;
    private final BigInteger id;

    public DbSearchResult(BigInteger bigInteger, String str, Object obj, Attributes attributes) {
        super(str, obj, attributes);
        this.id = bigInteger;
    }

    public DbSearchResult(BigInteger bigInteger, String str, Object obj, Attributes attributes, boolean z) {
        super(str, obj, attributes, z);
        this.id = bigInteger;
    }

    public DbSearchResult(BigInteger bigInteger, String str, String str2, Object obj, Attributes attributes) {
        super(str, str2, obj, attributes);
        this.id = bigInteger;
    }

    public DbSearchResult(BigInteger bigInteger, String str, String str2, Object obj, Attributes attributes, boolean z) {
        super(str, str2, obj, attributes, z);
        this.id = bigInteger;
    }

    public BigInteger getId() {
        return this.id;
    }
}
