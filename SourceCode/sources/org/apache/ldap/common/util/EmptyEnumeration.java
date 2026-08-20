package org.apache.ldap.common.util;

import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class EmptyEnumeration implements NamingEnumeration {
    public void close() {
    }

    public boolean hasMore() throws NamingException {
        return false;
    }

    public boolean hasMoreElements() {
        return false;
    }

    public Object next() throws NamingException {
        throw new NoSuchElementException();
    }

    public Object nextElement() {
        throw new NoSuchElementException();
    }
}
