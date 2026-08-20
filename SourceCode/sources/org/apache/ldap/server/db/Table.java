package org.apache.ldap.server.db;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface Table {
    void close() throws NamingException;

    int count() throws NamingException;

    int count(Object obj) throws NamingException;

    int count(Object obj, boolean z) throws NamingException;

    Object get(Object obj) throws NamingException;

    TupleComparator getComparator();

    String getName();

    TupleRenderer getRenderer();

    boolean has(Object obj) throws NamingException;

    boolean has(Object obj, Object obj2) throws NamingException;

    boolean has(Object obj, Object obj2, boolean z) throws NamingException;

    boolean has(Object obj, boolean z) throws NamingException;

    boolean isDupsEnabled();

    boolean isSortedDupsEnabled();

    NamingEnumeration listTuples() throws NamingException;

    NamingEnumeration listTuples(Object obj) throws NamingException;

    NamingEnumeration listTuples(Object obj, Object obj2, boolean z) throws NamingException;

    NamingEnumeration listTuples(Object obj, boolean z) throws NamingException;

    NamingEnumeration listValues(Object obj) throws NamingException;

    Object put(Object obj, Object obj2) throws NamingException;

    Object put(Object obj, NamingEnumeration namingEnumeration) throws NamingException;

    Object remove(Object obj) throws NamingException;

    Object remove(Object obj, Object obj2) throws NamingException;

    Object remove(Object obj, NamingEnumeration namingEnumeration) throws NamingException;

    void setRenderer(TupleRenderer tupleRenderer);
}
