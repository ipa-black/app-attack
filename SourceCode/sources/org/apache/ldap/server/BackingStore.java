package org.apache.ldap.server;

import java.util.Map;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface BackingStore {
    void add(String str, Name name, Attributes attributes) throws NamingException;

    void close() throws NamingException;

    void delete(Name name) throws NamingException;

    boolean hasEntry(Name name) throws NamingException;

    boolean isClosed();

    boolean isSuffix(Name name) throws NamingException;

    NamingEnumeration list(Name name) throws NamingException;

    Attributes lookup(Name name) throws NamingException;

    Attributes lookup(Name name, String[] strArr) throws NamingException;

    void modify(Name name, int i, Attributes attributes) throws NamingException;

    void modify(Name name, ModificationItem[] modificationItemArr) throws NamingException;

    void modifyRn(Name name, String str, boolean z) throws NamingException;

    void move(Name name, Name name2) throws NamingException;

    void move(Name name, Name name2, String str, boolean z) throws NamingException;

    NamingEnumeration search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) throws NamingException;

    void sync() throws NamingException;
}
