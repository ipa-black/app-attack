package org.apache.ldap.server.db;

import java.util.Iterator;
import javax.naming.NamingEnumeration;
/* loaded from: classes3.dex */
public class TupleEnumeration implements NamingEnumeration {
    private final Iterator iterator;
    private final Object key;
    private final Tuple tuple;

    public void close() {
    }

    public TupleEnumeration(Object obj, Iterator it) {
        Tuple tuple = new Tuple();
        this.tuple = tuple;
        this.key = obj;
        tuple.setKey(obj);
        this.iterator = it;
    }

    public Object next() {
        this.tuple.setKey(this.key);
        this.tuple.setValue(this.iterator.next());
        return this.tuple;
    }

    public Object nextElement() {
        this.tuple.setKey(this.key);
        this.tuple.setValue(this.iterator.next());
        return this.tuple;
    }

    public boolean hasMore() {
        return this.iterator.hasNext();
    }

    public boolean hasMoreElements() {
        return this.iterator.hasNext();
    }
}
