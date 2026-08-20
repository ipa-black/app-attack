package org.apache.ldap.server.db;

import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class NoDupsEnumeration implements NamingEnumeration {
    private final TupleBrowser browser;
    private final boolean doAscendingScan;
    private final Tuple returned = new Tuple();
    private final Tuple prefetched = new Tuple();
    private boolean hasNext = true;

    public NoDupsEnumeration(TupleBrowser tupleBrowser, boolean z) throws NamingException {
        this.browser = tupleBrowser;
        this.doAscendingScan = z;
        prefetch();
    }

    public Object next() throws NamingException {
        this.returned.setKey(this.prefetched.getKey());
        this.returned.setValue(this.prefetched.getValue());
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
        return this.hasNext;
    }

    public boolean hasMoreElements() {
        return this.hasNext;
    }

    public void close() {
        this.hasNext = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean doAscendingScan() {
        return this.doAscendingScan;
    }

    private void prefetch() throws NamingException {
        boolean previous;
        if (this.doAscendingScan) {
            previous = this.browser.getNext(this.prefetched);
        } else {
            previous = this.browser.getPrevious(this.prefetched);
        }
        this.hasNext = previous;
    }
}
