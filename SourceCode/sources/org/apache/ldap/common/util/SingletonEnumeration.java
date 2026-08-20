package org.apache.ldap.common.util;

import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
/* loaded from: classes3.dex */
public class SingletonEnumeration implements NamingEnumeration {
    private final Object m_element;
    private boolean m_hasMore = true;

    public SingletonEnumeration(Object obj) {
        this.m_element = obj;
    }

    public void close() {
        this.m_hasMore = false;
    }

    public boolean hasMore() {
        return this.m_hasMore;
    }

    public Object next() {
        if (this.m_hasMore) {
            this.m_hasMore = false;
            return this.m_element;
        }
        throw new NoSuchElementException();
    }

    public boolean hasMoreElements() {
        return this.m_hasMore;
    }

    public Object nextElement() {
        return next();
    }
}
