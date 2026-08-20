package org.apache.ldap.server.db;

import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class DisjunctionEnumeration implements NamingEnumeration {
    private final NamingEnumeration[] children;
    private boolean hasMore;
    private int index;
    private final Map candidates = new HashMap();
    private final IndexRecord candidate = new IndexRecord();
    private final IndexRecord prefetched = new IndexRecord();

    public DisjunctionEnumeration(NamingEnumeration[] namingEnumerationArr) throws NamingException {
        this.index = 0;
        this.hasMore = true;
        this.children = namingEnumerationArr;
        if (namingEnumerationArr.length <= 0) {
            this.hasMore = false;
            return;
        }
        while (!namingEnumerationArr[this.index].hasMore()) {
            int i = this.index + 1;
            this.index = i;
            if (i >= namingEnumerationArr.length) {
                close();
                return;
            }
        }
        IndexRecord indexRecord = (IndexRecord) namingEnumerationArr[this.index].next();
        this.prefetched.copy(indexRecord);
        this.candidates.put(indexRecord.getEntryId(), indexRecord.getEntryId());
    }

    public Object nextElement() {
        try {
            return next();
        } catch (NamingException unused) {
            throw new NoSuchElementException();
        }
    }

    public boolean hasMoreElements() {
        return hasMore();
    }

    public Object next() throws NamingException {
        this.candidate.copy(this.prefetched);
        while (true) {
            if (!this.children[this.index].hasMore()) {
                int i = this.index + 1;
                this.index = i;
                if (i >= this.children.length) {
                    close();
                    return this.candidate;
                }
            } else {
                this.prefetched.copy((IndexRecord) this.children[this.index].next());
                if (!this.candidates.containsKey(this.prefetched.getEntryId())) {
                    this.candidates.put(this.candidate.getEntryId(), this.candidate.getEntryId());
                    return this.candidate;
                }
            }
        }
    }

    public boolean hasMore() {
        return this.hasMore;
    }

    public void close() throws NamingException {
        int i = 0;
        this.hasMore = false;
        Throwable th = null;
        while (true) {
            NamingEnumeration[] namingEnumerationArr = this.children;
            if (i >= namingEnumerationArr.length) {
                break;
            }
            try {
                namingEnumerationArr[i].close();
            } catch (Throwable th2) {
                th = th2;
            }
            i++;
        }
        if (th != null && (th instanceof NamingException)) {
            throw ((NamingException) th);
        }
        if (th == null) {
            return;
        }
        NamingException namingException = new NamingException();
        namingException.setRootCause(th);
        throw namingException;
    }
}
