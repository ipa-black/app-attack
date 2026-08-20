package org.apache.ldap.server.db;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.TreeSet;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class DupsEnumeration implements NamingEnumeration {
    private Iterator dupIterator;
    private Tuple duplicates;
    private final NoDupsEnumeration underlying;
    private boolean hasMore = true;
    private final Tuple returned = new Tuple();
    private final Tuple prefetched = new Tuple();

    public DupsEnumeration(NoDupsEnumeration noDupsEnumeration) throws NamingException {
        this.underlying = noDupsEnumeration;
        if (!noDupsEnumeration.hasMore()) {
            close();
        } else {
            prefetch();
        }
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
        return this.hasMore;
    }

    public boolean hasMoreElements() {
        return this.hasMore;
    }

    public void close() {
        this.hasMore = false;
        this.underlying.close();
    }

    private void prefetch() throws NamingException {
        while (true) {
            Iterator it = this.dupIterator;
            if (it == null || !it.hasNext()) {
                if (this.underlying.hasMore()) {
                    Tuple tuple = (Tuple) this.underlying.next();
                    this.duplicates = tuple;
                    TreeSet treeSet = (TreeSet) tuple.getValue();
                    if (this.underlying.doAscendingScan()) {
                        this.dupIterator = treeSet.iterator();
                    } else {
                        ArrayList arrayList = new ArrayList(treeSet.size());
                        arrayList.addAll(treeSet);
                        Collections.reverse(arrayList);
                        this.dupIterator = arrayList.iterator();
                    }
                } else {
                    close();
                    return;
                }
            } else {
                this.prefetched.setKey(this.duplicates.getKey());
                this.prefetched.setValue(this.dupIterator.next());
                return;
            }
        }
    }
}
