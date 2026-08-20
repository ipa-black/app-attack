package org.apache.ldap.server.db;

import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import org.apache.regexp.RE;
/* loaded from: classes3.dex */
public class IndexEnumeration implements NamingEnumeration {
    private boolean hasMore;
    private final IndexRecord prefetched;
    private final RE re;
    private final IndexRecord returned;
    private final boolean swapKeyVal;
    private final IndexRecord tmp;
    private final NamingEnumeration underlying;

    public IndexEnumeration(NamingEnumeration namingEnumeration) throws NamingException {
        this(namingEnumeration, false, null);
    }

    public IndexEnumeration(NamingEnumeration namingEnumeration, boolean z) throws NamingException {
        this(namingEnumeration, z, null);
    }

    public IndexEnumeration(NamingEnumeration namingEnumeration, boolean z, RE re) throws NamingException {
        this.tmp = new IndexRecord();
        this.returned = new IndexRecord();
        this.prefetched = new IndexRecord();
        this.hasMore = true;
        this.re = re;
        this.underlying = namingEnumeration;
        this.swapKeyVal = z;
        if (!namingEnumeration.hasMore()) {
            this.hasMore = false;
        } else {
            prefetch();
        }
    }

    public Object next() throws NamingException {
        this.returned.copy(this.prefetched);
        prefetch();
        return this.returned;
    }

    public Object nextElement() {
        try {
            return next();
        } catch (NamingException unused) {
            throw new NoSuchElementException();
        }
    }

    public boolean hasMore() {
        return this.hasMore;
    }

    public boolean hasMoreElements() {
        return this.hasMore;
    }

    public void close() throws NamingException {
        this.hasMore = false;
        this.underlying.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void prefetch() throws javax.naming.NamingException {
        /*
            r3 = this;
        L0:
            javax.naming.NamingEnumeration r0 = r3.underlying
            boolean r0 = r0.hasMore()
            if (r0 != 0) goto Lc
            r0 = 0
            r3.hasMore = r0
            return
        Lc:
            javax.naming.NamingEnumeration r0 = r3.underlying
            java.lang.Object r0 = r0.next()
            org.apache.ldap.server.db.Tuple r0 = (org.apache.ldap.server.db.Tuple) r0
            boolean r1 = r3.swapKeyVal
            r2 = 0
            if (r1 == 0) goto L1f
            org.apache.ldap.server.db.IndexRecord r1 = r3.tmp
            r1.setSwapped(r0, r2)
            goto L24
        L1f:
            org.apache.ldap.server.db.IndexRecord r1 = r3.tmp
            r1.setTuple(r0, r2)
        L24:
            org.apache.regexp.RE r0 = r3.re
            if (r0 == 0) goto L36
            org.apache.ldap.server.db.IndexRecord r1 = r3.tmp
            java.lang.Object r1 = r1.getIndexKey()
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = r0.match(r1)
            if (r0 == 0) goto L0
        L36:
            org.apache.ldap.server.db.IndexRecord r0 = r3.prefetched
            org.apache.ldap.server.db.IndexRecord r1 = r3.tmp
            r0.copy(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.server.db.IndexEnumeration.prefetch():void");
    }
}
