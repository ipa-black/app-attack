package org.apache.ldap.server.interceptor;

import javax.naming.NamingException;
import org.apache.ldap.server.authn.LdapPrincipal;
import org.apache.ldap.server.invocation.Add;
import org.apache.ldap.server.invocation.Delete;
import org.apache.ldap.server.invocation.GetMatchedDN;
import org.apache.ldap.server.invocation.GetSuffix;
import org.apache.ldap.server.invocation.HasEntry;
import org.apache.ldap.server.invocation.Invocation;
import org.apache.ldap.server.invocation.IsSuffix;
import org.apache.ldap.server.invocation.List;
import org.apache.ldap.server.invocation.ListSuffixes;
import org.apache.ldap.server.invocation.Lookup;
import org.apache.ldap.server.invocation.LookupWithAttrIds;
import org.apache.ldap.server.invocation.Modify;
import org.apache.ldap.server.invocation.ModifyMany;
import org.apache.ldap.server.invocation.ModifyRN;
import org.apache.ldap.server.invocation.Move;
import org.apache.ldap.server.invocation.MoveAndModifyRN;
import org.apache.ldap.server.invocation.Search;
import org.apache.ldap.server.jndi.ServerContext;
/* loaded from: classes3.dex */
public abstract class BaseInterceptor implements Interceptor {
    public static LdapPrincipal getPrincipal(Invocation invocation) {
        return ((ServerContext) invocation.getContextStack().peek()).getPrincipal();
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException {
        if (invocation instanceof Add) {
            process(nextInterceptor, (Add) invocation);
        } else if (invocation instanceof Delete) {
            process(nextInterceptor, (Delete) invocation);
        } else if (invocation instanceof GetMatchedDN) {
            process(nextInterceptor, (GetMatchedDN) invocation);
        } else if (invocation instanceof GetSuffix) {
            process(nextInterceptor, (GetSuffix) invocation);
        } else if (invocation instanceof HasEntry) {
            process(nextInterceptor, (HasEntry) invocation);
        } else if (invocation instanceof IsSuffix) {
            process(nextInterceptor, (IsSuffix) invocation);
        } else if (invocation instanceof List) {
            process(nextInterceptor, (List) invocation);
        } else if (invocation instanceof ListSuffixes) {
            process(nextInterceptor, (ListSuffixes) invocation);
        } else if (invocation instanceof Lookup) {
            process(nextInterceptor, (Lookup) invocation);
        } else if (invocation instanceof LookupWithAttrIds) {
            process(nextInterceptor, (LookupWithAttrIds) invocation);
        } else if (invocation instanceof Modify) {
            process(nextInterceptor, (Modify) invocation);
        } else if (invocation instanceof ModifyMany) {
            process(nextInterceptor, (ModifyMany) invocation);
        } else if (invocation instanceof ModifyRN) {
            process(nextInterceptor, (ModifyRN) invocation);
        } else if (invocation instanceof Move) {
            process(nextInterceptor, (Move) invocation);
        } else if (invocation instanceof MoveAndModifyRN) {
            process(nextInterceptor, (MoveAndModifyRN) invocation);
        } else if (invocation instanceof Search) {
            process(nextInterceptor, (Search) invocation);
        } else {
            throw new IllegalArgumentException(new StringBuffer("Unknown call type: ").append(invocation.getClass()).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, Add add) throws NamingException {
        nextInterceptor.process(add);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, Delete delete) throws NamingException {
        nextInterceptor.process(delete);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, GetMatchedDN getMatchedDN) throws NamingException {
        nextInterceptor.process(getMatchedDN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, GetSuffix getSuffix) throws NamingException {
        nextInterceptor.process(getSuffix);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, HasEntry hasEntry) throws NamingException {
        nextInterceptor.process(hasEntry);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, IsSuffix isSuffix) throws NamingException {
        nextInterceptor.process(isSuffix);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, List list) throws NamingException {
        nextInterceptor.process(list);
    }

    protected void process(NextInterceptor nextInterceptor, ListSuffixes listSuffixes) throws NamingException {
        nextInterceptor.process(listSuffixes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, Lookup lookup) throws NamingException {
        nextInterceptor.process(lookup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, LookupWithAttrIds lookupWithAttrIds) throws NamingException {
        nextInterceptor.process(lookupWithAttrIds);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, Modify modify) throws NamingException {
        nextInterceptor.process(modify);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, ModifyMany modifyMany) throws NamingException {
        nextInterceptor.process(modifyMany);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, ModifyRN modifyRN) throws NamingException {
        nextInterceptor.process(modifyRN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, Move move) throws NamingException {
        nextInterceptor.process(move);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, MoveAndModifyRN moveAndModifyRN) throws NamingException {
        nextInterceptor.process(moveAndModifyRN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void process(NextInterceptor nextInterceptor, Search search) throws NamingException {
        nextInterceptor.process(search);
    }
}
