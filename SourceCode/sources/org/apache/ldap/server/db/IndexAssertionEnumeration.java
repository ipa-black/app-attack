package org.apache.ldap.server.db;

import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class IndexAssertionEnumeration implements NamingEnumeration {
    private final IndexAssertion assertion;
    private final IndexRecord candidate;
    private final Map candidates;
    private final boolean checkDups;
    private boolean hasMore;
    private final IndexRecord prefetched;
    private final NamingEnumeration underlying;

    public IndexAssertionEnumeration(NamingEnumeration namingEnumeration, IndexAssertion indexAssertion) throws NamingException {
        this.prefetched = new IndexRecord();
        this.candidate = new IndexRecord();
        this.hasMore = true;
        this.underlying = namingEnumeration;
        this.candidates = null;
        this.assertion = indexAssertion;
        this.checkDups = false;
        prefetch();
    }

    public IndexAssertionEnumeration(NamingEnumeration namingEnumeration, IndexAssertion indexAssertion, boolean z) throws NamingException {
        this.prefetched = new IndexRecord();
        this.candidate = new IndexRecord();
        this.hasMore = true;
        this.underlying = namingEnumeration;
        this.candidates = new HashMap();
        this.assertion = indexAssertion;
        this.checkDups = z;
        prefetch();
    }

    public Object nextElement() {
        try {
            return next();
        } catch (NamingException unused) {
            throw new NoSuchElementException();
        }
    }

    public boolean hasMoreElements() {
        return this.hasMore;
    }

    public Object next() throws NamingException {
        this.candidate.copy(this.prefetched);
        prefetch();
        return this.candidate;
    }

    public boolean hasMore() {
        return this.hasMore;
    }

    public void close() throws NamingException {
        this.hasMore = false;
        this.underlying.close();
    }

    private void prefetch() throws NamingException {
        while (this.underlying.hasMore()) {
            IndexRecord indexRecord = (IndexRecord) this.underlying.next();
            if (this.assertion.assertCandidate(indexRecord)) {
                if (this.checkDups) {
                    if (!this.candidates.containsKey(indexRecord.getEntryId())) {
                        this.prefetched.copy(indexRecord);
                        this.candidates.put(indexRecord.getEntryId(), indexRecord.getEntryId());
                        return;
                    }
                } else {
                    this.prefetched.copy(indexRecord);
                    return;
                }
            }
        }
        close();
    }
}
