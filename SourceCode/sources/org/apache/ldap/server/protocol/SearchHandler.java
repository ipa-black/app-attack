package org.apache.ldap.server.protocol;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ReferralImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.message.SearchRequest;
import org.apache.ldap.common.message.SearchResponseDone;
import org.apache.ldap.common.message.SearchResponseDoneImpl;
import org.apache.ldap.common.message.SearchResponseEntryImpl;
import org.apache.ldap.common.message.SearchResponseReferenceImpl;
import org.apache.ldap.common.util.ArrayUtils;
import org.apache.ldap.common.util.ExceptionUtils;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class SearchHandler implements MessageHandler {
    private static final String DEREFALIASES_KEY = "java.naming.ldap.derefAliases";

    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        String[] strArr;
        ResultCodeEnum bestEstimate;
        SearchRequest searchRequest = (SearchRequest) obj;
        HashSet hashSet = new HashSet();
        hashSet.addAll(searchRequest.getAttributes());
        if (hashSet.size() > 0 && !hashSet.contains("ref")) {
            hashSet.add("ref");
            strArr = (String[]) hashSet.toArray(ArrayUtils.EMPTY_STRING_ARRAY);
        } else {
            strArr = hashSet.size() > 0 ? (String[]) hashSet.toArray(ArrayUtils.EMPTY_STRING_ARRAY) : null;
        }
        SearchControls searchControls = new SearchControls();
        searchControls.setCountLimit(searchRequest.getSizeLimit());
        searchControls.setTimeLimit(searchRequest.getTimeLimit());
        searchControls.setSearchScope(searchRequest.getScope().getValue());
        searchControls.setReturningObjFlag(searchRequest.getTypesOnly());
        searchControls.setReturningAttributes(strArr);
        searchControls.setDerefLinkFlag(true);
        try {
            LdapContext ldapContext = SessionRegistry.getSingleton().getLdapContext(protocolSession, null, true);
            ldapContext.addToEnvironment("java.naming.ldap.derefAliases", searchRequest.getDerefAliases().getName());
            ldapContext.addToEnvironment("__filter__", searchRequest.getFilter());
            NamingEnumeration search = ldapContext.search(searchRequest.getBase(), (String) null, searchControls);
            ldapContext.removeFromEnvironment("__filter__");
            if (search.hasMore()) {
                SearchResponseIterator searchResponseIterator = new SearchResponseIterator(searchRequest, search);
                while (searchResponseIterator.hasNext()) {
                    protocolSession.write(searchResponseIterator.next());
                }
                return;
            }
            search.close();
            SearchResponseDoneImpl searchResponseDoneImpl = new SearchResponseDoneImpl(searchRequest.getMessageId());
            searchResponseDoneImpl.setLdapResult(new LdapResultImpl(searchResponseDoneImpl));
            searchResponseDoneImpl.getLdapResult().setResultCode(ResultCodeEnum.SUCCESS);
            searchResponseDoneImpl.getLdapResult().setMatchedDn(searchRequest.getBase());
            for (Object obj2 : Collections.singleton(searchResponseDoneImpl)) {
                protocolSession.write(obj2);
            }
        } catch (NamingException e2) {
            String stringBuffer = new StringBuffer().append(new StringBuffer("failed on search operation:\n").append(searchRequest).append("\n").toString()).append(ExceptionUtils.getStackTrace(e2)).toString();
            SearchResponseDoneImpl searchResponseDoneImpl2 = new SearchResponseDoneImpl(searchRequest.getMessageId());
            if (e2 instanceof LdapException) {
                bestEstimate = ((LdapException) e2).getResultCode();
            } else {
                bestEstimate = ResultCodeEnum.getBestEstimate(e2, searchRequest.getType());
            }
            searchResponseDoneImpl2.setLdapResult(new LdapResultImpl(searchResponseDoneImpl2));
            searchResponseDoneImpl2.getLdapResult().setResultCode(bestEstimate);
            searchResponseDoneImpl2.getLdapResult().setErrorMessage(stringBuffer);
            if (e2.getResolvedName() != null) {
                searchResponseDoneImpl2.getLdapResult().setMatchedDn(e2.getResolvedName().toString());
            } else {
                searchResponseDoneImpl2.getLdapResult().setMatchedDn("");
            }
            for (Object obj3 : Collections.singleton(searchResponseDoneImpl2)) {
                protocolSession.write(obj3);
            }
        }
    }

    SearchResponseDone getResponse(SearchRequest searchRequest, NamingException namingException) {
        ResultCodeEnum bestEstimate;
        String stringBuffer = new StringBuffer().append(new StringBuffer("failed on search operation:\n").append(searchRequest).append("\n").toString()).append(ExceptionUtils.getStackTrace(namingException)).toString();
        SearchResponseDoneImpl searchResponseDoneImpl = new SearchResponseDoneImpl(searchRequest.getMessageId());
        if (namingException instanceof LdapException) {
            bestEstimate = ((LdapException) namingException).getResultCode();
        } else {
            bestEstimate = ResultCodeEnum.getBestEstimate(namingException, searchRequest.getType());
        }
        searchResponseDoneImpl.setLdapResult(new LdapResultImpl(searchResponseDoneImpl));
        searchResponseDoneImpl.getLdapResult().setResultCode(bestEstimate);
        searchResponseDoneImpl.getLdapResult().setErrorMessage(stringBuffer);
        if (namingException.getResolvedName() != null) {
            searchResponseDoneImpl.getLdapResult().setMatchedDn(namingException.getResolvedName().toString());
        } else {
            searchResponseDoneImpl.getLdapResult().setMatchedDn("");
        }
        return searchResponseDoneImpl;
    }

    /* loaded from: classes3.dex */
    class SearchResponseIterator implements Iterator {
        private boolean done = false;
        private Object prefetched;
        private final SearchRequest req;
        private SearchResponseDone respDone;
        private final NamingEnumeration underlying;

        public SearchResponseIterator(SearchRequest searchRequest, NamingEnumeration namingEnumeration) {
            this.req = searchRequest;
            this.underlying = namingEnumeration;
            try {
                if (namingEnumeration.hasMore()) {
                    SearchResult searchResult = (SearchResult) namingEnumeration.next();
                    Attribute attribute = searchResult.getAttributes().get("ref");
                    if (attribute != null && attribute.size() <= 0) {
                        SearchResponseReferenceImpl searchResponseReferenceImpl = new SearchResponseReferenceImpl(searchRequest.getMessageId());
                        searchResponseReferenceImpl.setReferral(new ReferralImpl(searchResponseReferenceImpl));
                        for (int i = 0; i < attribute.size(); i++) {
                            try {
                                searchResponseReferenceImpl.getReferral().addLdapUrl((String) attribute.get(i));
                            } catch (NamingException e2) {
                                try {
                                    namingEnumeration.close();
                                } catch (Throwable unused) {
                                }
                                this.prefetched = null;
                                this.respDone = SearchHandler.this.getResponse(searchRequest, e2);
                            }
                        }
                        this.prefetched = searchResponseReferenceImpl;
                        return;
                    }
                    SearchResponseEntryImpl searchResponseEntryImpl = new SearchResponseEntryImpl(searchRequest.getMessageId());
                    searchResponseEntryImpl.setAttributes(searchResult.getAttributes());
                    searchResponseEntryImpl.setObjectName(searchResult.getName());
                    this.prefetched = searchResponseEntryImpl;
                }
            } catch (NamingException e3) {
                try {
                    this.underlying.close();
                } catch (Exception unused2) {
                }
                this.respDone = SearchHandler.this.getResponse(searchRequest, e3);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.done;
        }

        @Override // java.util.Iterator
        public Object next() {
            Object obj = this.prefetched;
            if (this.done) {
                throw new NoSuchElementException();
            }
            SearchResponseDone searchResponseDone = this.respDone;
            if (searchResponseDone != null) {
                this.done = true;
                return searchResponseDone;
            }
            try {
                if (this.underlying.hasMore()) {
                    SearchResult searchResult = (SearchResult) this.underlying.next();
                    Attribute attribute = searchResult.getAttributes().get("ref");
                    if (attribute == null || attribute.size() > 0) {
                        SearchResponseEntryImpl searchResponseEntryImpl = new SearchResponseEntryImpl(this.req.getMessageId());
                        searchResponseEntryImpl.setAttributes(searchResult.getAttributes());
                        searchResponseEntryImpl.setObjectName(searchResult.getName());
                        this.prefetched = searchResponseEntryImpl;
                    } else {
                        SearchResponseReferenceImpl searchResponseReferenceImpl = new SearchResponseReferenceImpl(this.req.getMessageId());
                        searchResponseReferenceImpl.setReferral(new ReferralImpl(searchResponseReferenceImpl));
                        for (int i = 0; i < attribute.size(); i++) {
                            try {
                                searchResponseReferenceImpl.getReferral().addLdapUrl((String) attribute.get(i));
                            } catch (NamingException e2) {
                                try {
                                    this.underlying.close();
                                } catch (Throwable unused) {
                                }
                                this.prefetched = null;
                                this.respDone = SearchHandler.this.getResponse(this.req, e2);
                                return obj;
                            }
                        }
                        this.prefetched = searchResponseReferenceImpl;
                    }
                    return obj;
                }
                try {
                    this.underlying.close();
                } catch (Throwable unused2) {
                }
                SearchResponseDoneImpl searchResponseDoneImpl = new SearchResponseDoneImpl(this.req.getMessageId());
                this.respDone = searchResponseDoneImpl;
                searchResponseDoneImpl.setLdapResult(new LdapResultImpl(this.respDone));
                this.respDone.getLdapResult().setResultCode(ResultCodeEnum.SUCCESS);
                this.respDone.getLdapResult().setMatchedDn(this.req.getBase());
                this.prefetched = null;
                return obj;
            } catch (NamingException e3) {
                try {
                    this.underlying.close();
                } catch (Throwable unused3) {
                }
                this.prefetched = null;
                this.respDone = SearchHandler.this.getResponse(this.req, e3);
                return obj;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
