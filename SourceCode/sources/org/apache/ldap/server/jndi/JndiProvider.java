package org.apache.ldap.server.jndi;

import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.server.BackendSubsystem;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.RootNexus;
import org.apache.ldap.server.interceptor.Interceptor;
import org.apache.ldap.server.interceptor.InterceptorChain;
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
/* loaded from: classes3.dex */
public class JndiProvider implements BackendSubsystem {
    public static ThreadLocal ajc$interField$org_apache_ldap_server_jndi_ProviderNexusAspect$s_contextStacks = new ThreadLocal();
    private static JndiProvider s_singleton;
    private Interceptor interceptor;
    private boolean isShutdown = false;
    private RootNexus nexus;
    private PartitionNexus proxy;

    public static void ajc$interMethodDispatch2$org_apache_ldap_server_jndi_ProviderNexusAspect$push(LdapContext ldapContext) {
        ProviderNexusAspect.ajc$interMethod$org_apache_ldap_server_jndi_ProviderNexusAspect$org_apache_ldap_server_jndi_JndiProvider$push(ldapContext);
    }

    public JndiProvider(RootNexus rootNexus) {
        if (s_singleton != null) {
            throw new IllegalStateException("Cannot instantiate more than one JndiProvider!");
        }
        s_singleton = this;
        this.nexus = rootNexus;
        this.interceptor = new InterceptorChain();
        this.proxy = new PartitionNexusImpl();
    }

    public static void setProviderOn(CoreContextFactory coreContextFactory) {
        coreContextFactory.setProvider(s_singleton);
    }

    @Override // org.apache.ldap.server.BackendSubsystem
    public LdapContext getLdapContext(Hashtable hashtable) throws NamingException {
        if (this.isShutdown) {
            throw new IllegalStateException("Eve has been shutdown!");
        }
        return new ServerLdapContext(this.proxy, hashtable);
    }

    @Override // org.apache.ldap.server.BackendSubsystem
    public void sync() throws NamingException {
        if (this.isShutdown) {
            throw new IllegalStateException("Eve has been shutdown!");
        }
        this.nexus.sync();
    }

    @Override // org.apache.ldap.server.BackendSubsystem
    public void shutdown() throws NamingException {
        if (this.isShutdown) {
            throw new IllegalStateException("Eve has been shutdown!");
        }
        this.nexus.sync();
        this.nexus.close();
        this.nexus = null;
        this.proxy = null;
        this.interceptor.destroy();
        this.interceptor = null;
        this.isShutdown = true;
        s_singleton = null;
    }

    public Interceptor getInterceptor() {
        return this.interceptor;
    }

    public void setInterceptor(Interceptor interceptor) {
        if (interceptor == null) {
            throw new NullPointerException("interceptor");
        }
        this.interceptor = interceptor;
    }

    public Object invoke(Invocation invocation) throws NamingException {
        this.interceptor.process(null, invocation);
        return invocation.getReturnValue();
    }

    public Context getDeadContext() {
        return new DeadContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class PartitionNexusImpl implements PartitionNexus {
        PartitionNexusImpl() {
            JndiProvider.this = r1;
        }

        @Override // org.apache.ldap.server.PartitionNexus
        public LdapContext getLdapContext() {
            return JndiProvider.this.nexus.getLdapContext();
        }

        @Override // org.apache.ldap.server.PartitionNexus
        public Name getMatchedDn(Name name, boolean z) throws NamingException {
            return (Name) JndiProvider.this.invoke(new GetMatchedDN(name, z));
        }

        @Override // org.apache.ldap.server.PartitionNexus
        public Name getSuffix(Name name, boolean z) throws NamingException {
            return (Name) JndiProvider.this.invoke(new GetSuffix(name, z));
        }

        @Override // org.apache.ldap.server.PartitionNexus
        public Iterator listSuffixes(boolean z) throws NamingException {
            return (Iterator) JndiProvider.this.invoke(new ListSuffixes(z));
        }

        @Override // org.apache.ldap.server.PartitionNexus
        public void register(ContextPartition contextPartition) {
            JndiProvider.this.nexus.register(contextPartition);
        }

        @Override // org.apache.ldap.server.PartitionNexus
        public void unregister(ContextPartition contextPartition) {
            JndiProvider.this.nexus.unregister(contextPartition);
        }

        @Override // org.apache.ldap.server.BackingStore
        public void delete(Name name) throws NamingException {
            JndiProvider.this.invoke(new Delete(name));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void add(String str, Name name, Attributes attributes) throws NamingException {
            JndiProvider.this.invoke(new Add(str, name, attributes));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void modify(Name name, int i, Attributes attributes) throws NamingException {
            JndiProvider.this.invoke(new Modify(name, i, attributes));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void modify(Name name, ModificationItem[] modificationItemArr) throws NamingException {
            JndiProvider.this.invoke(new ModifyMany(name, modificationItemArr));
        }

        @Override // org.apache.ldap.server.BackingStore
        public NamingEnumeration list(Name name) throws NamingException {
            return (NamingEnumeration) JndiProvider.this.invoke(new List(name));
        }

        @Override // org.apache.ldap.server.BackingStore
        public NamingEnumeration search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) throws NamingException {
            return (NamingEnumeration) JndiProvider.this.invoke(new Search(name, map, exprNode, searchControls));
        }

        @Override // org.apache.ldap.server.BackingStore
        public Attributes lookup(Name name) throws NamingException {
            return (Attributes) JndiProvider.this.invoke(new Lookup(name));
        }

        @Override // org.apache.ldap.server.BackingStore
        public Attributes lookup(Name name, String[] strArr) throws NamingException {
            return (Attributes) JndiProvider.this.invoke(new LookupWithAttrIds(name, strArr));
        }

        @Override // org.apache.ldap.server.BackingStore
        public boolean hasEntry(Name name) throws NamingException {
            return Boolean.TRUE.equals(JndiProvider.this.invoke(new HasEntry(name)));
        }

        @Override // org.apache.ldap.server.BackingStore
        public boolean isSuffix(Name name) throws NamingException {
            return Boolean.TRUE.equals(JndiProvider.this.invoke(new IsSuffix(name)));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void modifyRn(Name name, String str, boolean z) throws NamingException {
            JndiProvider.this.invoke(new ModifyRN(name, str, z));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void move(Name name, Name name2) throws NamingException {
            JndiProvider.this.invoke(new Move(name, name2));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void move(Name name, Name name2, String str, boolean z) throws NamingException {
            JndiProvider.this.invoke(new MoveAndModifyRN(name, name2, str, z));
        }

        @Override // org.apache.ldap.server.BackingStore
        public void sync() throws NamingException {
            JndiProvider.this.nexus.sync();
        }

        @Override // org.apache.ldap.server.BackingStore
        public void close() throws NamingException {
            JndiProvider.this.nexus.close();
        }

        @Override // org.apache.ldap.server.BackingStore
        public boolean isClosed() {
            return JndiProvider.this.nexus.isClosed();
        }
    }
}
