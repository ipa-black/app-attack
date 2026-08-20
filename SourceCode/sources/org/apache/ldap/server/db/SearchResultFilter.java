package org.apache.ldap.server.db;

import javax.naming.NamingException;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
/* loaded from: classes3.dex */
public interface SearchResultFilter {
    boolean accept(LdapContext ldapContext, SearchResult searchResult, SearchControls searchControls) throws NamingException;
}
