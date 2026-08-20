package org.apache.ldap.server.db;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
/* loaded from: classes3.dex */
public class ResultFilteringEnumeration implements NamingEnumeration {
    private final LdapContext ctx;
    private final NamingEnumeration decorated;
    private final List filters;
    private boolean isClosed = false;
    private SearchResult prefetched;
    private final SearchControls searchControls;

    public ResultFilteringEnumeration(NamingEnumeration namingEnumeration, SearchControls searchControls, LdapContext ldapContext, SearchResultFilter searchResultFilter) throws NamingException {
        this.searchControls = searchControls;
        this.ctx = ldapContext;
        ArrayList arrayList = new ArrayList();
        this.filters = arrayList;
        arrayList.add(searchResultFilter);
        this.decorated = namingEnumeration;
        if (!namingEnumeration.hasMore()) {
            close();
        } else {
            prefetch();
        }
    }

    public ResultFilteringEnumeration(NamingEnumeration namingEnumeration, SearchControls searchControls, LdapContext ldapContext, List list) throws NamingException {
        this.searchControls = searchControls;
        this.ctx = ldapContext;
        ArrayList arrayList = new ArrayList();
        this.filters = arrayList;
        arrayList.addAll(list);
        this.decorated = namingEnumeration;
        if (!namingEnumeration.hasMore()) {
            close();
        } else {
            prefetch();
        }
    }

    public boolean addResultFilter(SearchResultFilter searchResultFilter) {
        return this.filters.add(searchResultFilter);
    }

    public boolean removeResultFilter(SearchResultFilter searchResultFilter) {
        return this.filters.remove(searchResultFilter);
    }

    public List getFilters() {
        return Collections.unmodifiableList(this.filters);
    }

    public void close() throws NamingException {
        this.isClosed = true;
        this.decorated.close();
    }

    public boolean hasMore() {
        return !this.isClosed;
    }

    public Object next() throws NamingException {
        SearchResult searchResult = this.prefetched;
        prefetch();
        return searchResult;
    }

    public boolean hasMoreElements() {
        return !this.isClosed;
    }

    public Object nextElement() {
        SearchResult searchResult = this.prefetched;
        try {
            prefetch();
        } catch (NamingException e2) {
            e2.printStackTrace();
        }
        return searchResult;
    }

    private void prefetch() throws NamingException {
        while (this.decorated.hasMore()) {
            SearchResult searchResult = (SearchResult) this.decorated.next();
            if (this.filters.isEmpty()) {
                this.prefetched = searchResult;
                return;
            }
            if (this.filters.size() == 1) {
                if (((SearchResultFilter) this.filters.get(0)).accept(this.ctx, searchResult, this.searchControls)) {
                    this.prefetched = searchResult;
                    return;
                }
            } else {
                for (int i = 0; i < this.filters.size(); i++) {
                    ((SearchResultFilter) this.filters.get(i)).accept(this.ctx, searchResult, this.searchControls);
                }
                this.prefetched = searchResult;
                return;
            }
        }
        close();
    }
}
