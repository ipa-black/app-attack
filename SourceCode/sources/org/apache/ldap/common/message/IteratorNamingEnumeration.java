package org.apache.ldap.common.message;

import java.util.Iterator;
import javax.naming.NamingEnumeration;
/* loaded from: classes3.dex */
public class IteratorNamingEnumeration implements NamingEnumeration {
    private final Iterator m_iterator;

    public void close() {
    }

    public IteratorNamingEnumeration(Iterator it) {
        this.m_iterator = it;
    }

    public boolean hasMoreElements() {
        return this.m_iterator.hasNext();
    }

    public Object nextElement() {
        return this.m_iterator.next();
    }

    public boolean hasMore() {
        return this.m_iterator.hasNext();
    }

    public Object next() {
        return this.m_iterator.next();
    }
}
