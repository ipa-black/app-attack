package org.apache.ldap.server.exception;

import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NameAlreadyBoundException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import org.apache.ldap.common.exception.LdapContextNotEmptyException;
import org.apache.ldap.common.exception.LdapNameAlreadyBoundException;
import org.apache.ldap.common.exception.LdapNameNotFoundException;
import org.apache.ldap.common.exception.LdapNamingException;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.RootNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.interceptor.BaseInterceptor;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.interceptor.NextInterceptor;
import org.apache.ldap.server.invocation.Add;
import org.apache.ldap.server.invocation.Delete;
import org.apache.ldap.server.invocation.List;
import org.apache.ldap.server.invocation.Lookup;
import org.apache.ldap.server.invocation.LookupWithAttrIds;
import org.apache.ldap.server.invocation.Modify;
import org.apache.ldap.server.invocation.ModifyMany;
import org.apache.ldap.server.invocation.ModifyRN;
import org.apache.ldap.server.invocation.Move;
import org.apache.ldap.server.invocation.MoveAndModifyRN;
import org.apache.ldap.server.invocation.Search;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
/* loaded from: classes3.dex */
public class ExceptionService extends BaseInterceptor {
    private RootNexus nexus;

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void destroy() {
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void init(InterceptorContext interceptorContext) {
        this.nexus = interceptorContext.getRootNexus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Add add) throws NamingException {
        boolean z;
        Name normalizedName = add.getNormalizedName();
        String userProvidedName = add.getUserProvidedName();
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            if (rootNexus.hasEntry(normalizedName)) {
                NameAlreadyBoundException ldapNameAlreadyBoundException = new LdapNameAlreadyBoundException();
                ldapNameAlreadyBoundException.setResolvedName(new LdapName(userProvidedName));
                throw ldapNameAlreadyBoundException;
            }
            Name suffix = new LdapName(userProvidedName).getSuffix(1);
            assertHasEntry("Attempt to add under non-existant parent: ", suffix);
            RootNexus rootNexus2 = this.nexus;
            Name suffix2 = normalizedName.getSuffix(1);
            try {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                }
                if (rootNexus2.lookup(suffix2).get(JavaLdapSupport.OBJECTCLASS_ATTR).contains(Database.ALIAS_OBJECT)) {
                    NamingException ldapNamingException = new LdapNamingException(new StringBuffer("Attempt to add entry to alias '").append(userProvidedName).append("' not allowed.").toString(), ResultCodeEnum.ALIASPROBLEM);
                    ldapNamingException.setResolvedName(suffix);
                    throw ldapNamingException;
                }
                nextInterceptor.process(add);
            } finally {
                if (z && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapContextNotEmptyException] */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Delete delete) throws NamingException {
        Name name = delete.getName();
        assertHasEntry("Attempt to delete non-existant entry: ", name);
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            NamingEnumeration list = rootNexus.list(name);
            boolean hasMore = list.hasMore();
            list.close();
            if (hasMore) {
                ?? ldapContextNotEmptyException = new LdapContextNotEmptyException();
                ldapContextNotEmptyException.setResolvedName(name);
                throw ldapContextNotEmptyException;
            }
            nextInterceptor.process(delete);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, List list) throws NamingException {
        assertHasEntry("Attempt to search under non-existant entry: ", list.getBaseName());
        nextInterceptor.process(list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Lookup lookup) throws NamingException {
        assertHasEntry("Attempt to lookup non-existant entry: ", lookup.getName());
        nextInterceptor.process(lookup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, LookupWithAttrIds lookupWithAttrIds) throws NamingException {
        assertHasEntry("Attempt to lookup non-existant entry: ", lookupWithAttrIds.getName());
        nextInterceptor.process(lookupWithAttrIds);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Modify modify) throws NamingException {
        assertHasEntry("Attempt to modify non-existant entry: ", modify.getName());
        nextInterceptor.process(modify);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyMany modifyMany) throws NamingException {
        assertHasEntry("Attempt to modify non-existant entry: ", modifyMany.getName());
        nextInterceptor.process(modifyMany);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNameAlreadyBoundException] */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyRN modifyRN) throws NamingException {
        Name name = modifyRN.getName();
        String newRelativeName = modifyRN.getNewRelativeName();
        assertHasEntry("Attempt to rename non-existant entry: ", name);
        Name add = name.getSuffix(1).add(newRelativeName);
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            if (rootNexus.hasEntry(add)) {
                ?? ldapNameAlreadyBoundException = new LdapNameAlreadyBoundException(new StringBuffer("target entry ").append(add).append(" already exists!").toString());
                ldapNameAlreadyBoundException.setResolvedName(add);
                throw ldapNameAlreadyBoundException;
            }
            nextInterceptor.process(modifyRN);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNameAlreadyBoundException] */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Move move) throws NamingException {
        assertHasEntry("Attempt to move to non-existant parent: ", move.getName());
        assertHasEntry("Attempt to move to non-existant parent: ", move.getNewParentName());
        String str = move.getName().get(move.getName().size() - 1);
        Name name = (Name) move.getNewParentName().clone();
        name.add(str);
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            if (rootNexus.hasEntry(name)) {
                ?? ldapNameAlreadyBoundException = new LdapNameAlreadyBoundException(new StringBuffer("target entry ").append(name).append(" already exists!").toString());
                ldapNameAlreadyBoundException.setResolvedName(name);
                throw ldapNameAlreadyBoundException;
            }
            nextInterceptor.process(move);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNameAlreadyBoundException] */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, MoveAndModifyRN moveAndModifyRN) throws NamingException {
        assertHasEntry("Attempt to move to non-existant parent: ", moveAndModifyRN.getName());
        assertHasEntry("Attempt to move to non-existant parent: ", moveAndModifyRN.getNewParentName());
        Name name = (Name) moveAndModifyRN.getNewParentName().clone();
        name.add(moveAndModifyRN.getNewRelativeName());
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            if (rootNexus.hasEntry(name)) {
                ?? ldapNameAlreadyBoundException = new LdapNameAlreadyBoundException(new StringBuffer("target entry ").append(name).append(" already exists!").toString());
                ldapNameAlreadyBoundException.setResolvedName(name);
                throw ldapNameAlreadyBoundException;
            }
            nextInterceptor.process(moveAndModifyRN);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Search search) throws NamingException {
        Name baseName = search.getBaseName();
        if (baseName.size() == 0) {
            nextInterceptor.process(search);
        } else if (((String) this.nexus.getRootDSE().get("subschemaSubentry").get()).equalsIgnoreCase(baseName.toString())) {
            nextInterceptor.process(search);
        } else {
            assertHasEntry("Attempt to search under non-existant entry: ", baseName);
            nextInterceptor.process(search);
        }
    }

    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v4, types: [org.apache.ldap.common.exception.LdapNameNotFoundException, java.lang.Throwable] */
    private void assertHasEntry(String str, Name name) throws NamingException {
        boolean z;
        ?? r0;
        RootNexus rootNexus = this.nexus;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            if (rootNexus.hasEntry(name)) {
                return;
            }
            if (str != null) {
                r0 = new LdapNameNotFoundException(new StringBuffer(String.valueOf(str)).append(name).toString());
            } else {
                r0 = new LdapNameNotFoundException(name.toString());
            }
            RootNexus rootNexus2 = this.nexus;
            try {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                }
                r0.setResolvedName(rootNexus2.getMatchedDn(name, false));
                throw r0;
            } finally {
                if (z && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }
}
