package org.apache.ldap.server.jndi;

import java.io.Serializable;
import java.util.Hashtable;
import javax.naming.ConfigurationException;
import javax.naming.Context;
import javax.naming.InvalidNameException;
import javax.naming.Name;
import javax.naming.NameNotFoundException;
import javax.naming.NameParser;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.Reference;
import javax.naming.Referenceable;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.SearchControls;
import javax.naming.ldap.Control;
import javax.naming.spi.DirectoryManager;
import org.apache.ldap.common.exception.LdapNoPermissionException;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.NamespaceTools;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.authn.AuthenticationService;
import org.apache.ldap.server.authn.LdapPrincipal;
import org.apache.ldap.server.db.Database;
/* loaded from: classes3.dex */
public abstract class ServerContext implements Context {
    public static final String DELETE_OLD_RDN_PROP = "java.naming.ldap.deleteRDN";
    private final LdapName dn;
    private final Hashtable env;
    private final PartitionNexus nexusProxy;
    private LdapPrincipal principal;

    public void close() throws NamingException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ServerContext(PartitionNexus partitionNexus, Hashtable hashtable) throws NamingException {
        this.nexusProxy = partitionNexus;
        this.env = (Hashtable) hashtable.clone();
        if (!hashtable.containsKey("java.naming.provider.url")) {
            throw new ConfigurationException("Expected property java.naming.provider.url but could not find it in env!");
        }
        String str = (String) hashtable.get("java.naming.provider.url");
        if (str == null) {
            throw new ConfigurationException("Expected value for property java.naming.provider.url but it was set to null in env!");
        }
        LdapName ldapName = new LdapName(str);
        this.dn = ldapName;
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            if (!partitionNexus.hasEntry(ldapName)) {
                throw new NameNotFoundException(new StringBuffer().append(ldapName).append(" does not exist").toString());
            }
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ServerContext(LdapPrincipal ldapPrincipal, PartitionNexus partitionNexus, Hashtable hashtable, Name name) {
        this.dn = (LdapName) name.clone();
        Hashtable hashtable2 = (Hashtable) hashtable.clone();
        this.env = hashtable2;
        hashtable2.put("java.naming.provider.url", name.toString());
        this.nexusProxy = partitionNexus;
        this.principal = ldapPrincipal;
    }

    public LdapPrincipal getPrincipal() {
        return this.principal;
    }

    public void setPrincipal(AuthenticationService.TrustedPrincipalWrapper trustedPrincipalWrapper) {
        this.principal = trustedPrincipalWrapper.getPrincipal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PartitionNexus getNexusProxy() {
        return this.nexusProxy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Name getDn() {
        return this.dn;
    }

    public String getNameInNamespace() throws NamingException {
        return this.dn.toString();
    }

    public Hashtable getEnvironment() {
        return this.env;
    }

    public Object addToEnvironment(String str, Object obj) throws NamingException {
        return this.env.put(str, obj);
    }

    public Object removeFromEnvironment(String str) throws NamingException {
        return this.env.remove(str);
    }

    public Context createSubcontext(String str) throws NamingException {
        return createSubcontext(new LdapName(str));
    }

    public Context createSubcontext(Name name) throws NamingException {
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        LdapName buildTarget = buildTarget(name);
        String str = name.get(name.size() - 1);
        lockableAttributesImpl.put(NamespaceTools.getRdnAttribute(str), NamespaceTools.getRdnValue(str));
        lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.JCONTAINER_ATTR);
        lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
        PartitionNexus partitionNexus = this.nexusProxy;
        String ldapName = buildTarget.toString();
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            partitionNexus.add(ldapName, buildTarget, lockableAttributesImpl);
            ServerLdapContext serverLdapContext = new ServerLdapContext(this.principal, this.nexusProxy, this.env, buildTarget);
            serverLdapContext.setRequestControls((Control[]) ((ServerLdapContext) this).getRequestControls().clone());
            return serverLdapContext;
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public void destroySubcontext(String str) throws NamingException {
        destroySubcontext(new LdapName(str));
    }

    public void destroySubcontext(Name name) throws NamingException {
        boolean z;
        LdapName buildTarget = buildTarget(name);
        if (buildTarget.size() == 0) {
            throw new LdapNoPermissionException("can't delete the rootDSE");
        }
        PartitionNexus partitionNexus = this.nexusProxy;
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            partitionNexus.delete(buildTarget);
            if (z) {
                return;
            }
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public void bind(String str, Object obj) throws NamingException {
        bind(new LdapName(str), obj);
    }

    public void bind(Name name, Object obj) throws NamingException {
        PartitionNexus partitionNexus;
        boolean z;
        Attributes attributes = DirectoryManager.getStateToBind(obj, name, this, this.env, (Attributes) null).getAttributes();
        if (attributes != null) {
            LdapName buildTarget = buildTarget(name);
            partitionNexus = this.nexusProxy;
            String obj2 = buildTarget.toString();
            try {
                if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                }
                partitionNexus.add(obj2, buildTarget, attributes);
                if (z) {
                    return;
                }
            } finally {
                if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                }
            }
        } else if (obj instanceof Referenceable) {
            ((Referenceable) obj).getReference();
            throw new NamingException("Do not know how to store Referenceables yet!");
        } else if (obj instanceof Reference) {
            throw new NamingException("Do not know how to store References yet!");
        } else {
            if (obj instanceof Serializable) {
                LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
                if (attributes != null && attributes.size() > 0) {
                    NamingEnumeration all = attributes.getAll();
                    while (all.hasMore()) {
                        lockableAttributesImpl.put((Attribute) all.next());
                    }
                }
                LdapName buildTarget2 = buildTarget(name);
                JavaLdapSupport.serialize(lockableAttributesImpl, obj);
                PartitionNexus partitionNexus2 = this.nexusProxy;
                String obj3 = buildTarget2.toString();
                try {
                    if (!(this instanceof ContextPartition) && !(partitionNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                    }
                    partitionNexus2.add(obj3, buildTarget2, lockableAttributesImpl);
                    if ((this instanceof ContextPartition) || (partitionNexus2 instanceof Database)) {
                        return;
                    }
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                } finally {
                    if (!(this instanceof ContextPartition) && !(partitionNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                    }
                }
            } else if (obj instanceof DirContext) {
                Attributes attributes2 = ((DirContext) obj).getAttributes("");
                if (attributes != null && attributes.size() > 0) {
                    NamingEnumeration all2 = attributes.getAll();
                    while (all2.hasMore()) {
                        attributes2.put((Attribute) all2.next());
                    }
                }
                LdapName buildTarget3 = buildTarget(name);
                partitionNexus = this.nexusProxy;
                String obj4 = buildTarget3.toString();
                try {
                    if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                    }
                    partitionNexus.add(obj4, buildTarget3, attributes2);
                    if ((this instanceof ContextPartition) || (partitionNexus instanceof Database)) {
                        return;
                    }
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                } finally {
                    if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                    }
                }
            } else {
                throw new NamingException(new StringBuffer("Can't find a way to bind: ").append(obj).toString());
            }
        }
    }

    public void rename(String str, String str2) throws NamingException {
        rename(new LdapName(str), new LdapName(str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rename(javax.naming.Name r10, javax.naming.Name r11) throws javax.naming.NamingException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.server.jndi.ServerContext.rename(javax.naming.Name, javax.naming.Name):void");
    }

    public void rebind(String str, Object obj) throws NamingException {
        rebind(new LdapName(str), obj);
    }

    public void rebind(Name name, Object obj) throws NamingException {
        boolean z;
        LdapName buildTarget = buildTarget(name);
        PartitionNexus partitionNexus = this.nexusProxy;
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            if (partitionNexus.hasEntry(buildTarget)) {
                PartitionNexus partitionNexus2 = this.nexusProxy;
                try {
                    if (!(this instanceof ContextPartition) && !(partitionNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                    }
                    partitionNexus2.delete(buildTarget);
                } finally {
                    if (!z && !(partitionNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                    }
                }
            }
            bind(name, obj);
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public void unbind(String str) throws NamingException {
        unbind(new LdapName(str));
    }

    public void unbind(Name name) throws NamingException {
        boolean z;
        PartitionNexus partitionNexus = this.nexusProxy;
        LdapName buildTarget = buildTarget(name);
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            partitionNexus.delete(buildTarget);
            if (z) {
                return;
            }
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public Object lookup(String str) throws NamingException {
        return lookup(new LdapName(str));
    }

    public Object lookup(Name name) throws NamingException {
        LdapName buildTarget = buildTarget(name);
        PartitionNexus partitionNexus = this.nexusProxy;
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            Attributes lookup = partitionNexus.lookup(buildTarget);
            try {
                Object objectInstance = DirectoryManager.getObjectInstance((Object) null, name, this, this.env, lookup);
                if (objectInstance != null) {
                    return objectInstance;
                }
                if (lookup.get(JavaLdapSupport.JCLASSNAME_ATTR) != null) {
                    return JavaLdapSupport.deserialize(lookup);
                }
                ServerLdapContext serverLdapContext = new ServerLdapContext(this.principal, this.nexusProxy, this.env, buildTarget);
                Control[] requestControls = ((ServerLdapContext) this).getRequestControls();
                if (requestControls != null) {
                    serverLdapContext.setRequestControls((Control[]) requestControls.clone());
                }
                return serverLdapContext;
            } catch (Exception e2) {
                throw new NamingException(e2.getMessage());
            }
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public Object lookupLink(String str) throws NamingException {
        throw new UnsupportedOperationException();
    }

    public Object lookupLink(Name name) throws NamingException {
        throw new UnsupportedOperationException();
    }

    public NameParser getNameParser(String str) throws NamingException {
        return LdapName.getNameParser();
    }

    public NameParser getNameParser(Name name) throws NamingException {
        return LdapName.getNameParser();
    }

    public NamingEnumeration list(String str) throws NamingException {
        LdapName ldapName = new LdapName(str);
        try {
            if (!(this instanceof ContextPartition) && (this instanceof PartitionNexus) && !(this instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return list(ldapName);
        } finally {
            if (!(this instanceof ContextPartition) && (this instanceof PartitionNexus) && !(this instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public NamingEnumeration list(Name name) throws NamingException {
        PartitionNexus partitionNexus = this.nexusProxy;
        LdapName buildTarget = buildTarget(name);
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return partitionNexus.list(buildTarget);
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public NamingEnumeration listBindings(String str) throws NamingException {
        return listBindings(new LdapName(str));
    }

    public NamingEnumeration listBindings(Name name) throws NamingException {
        LdapName buildTarget = buildTarget(name);
        PresenceNode presenceNode = new PresenceNode(JavaLdapSupport.OBJECTCLASS_ATTR);
        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(1);
        PartitionNexus partitionNexus = this.nexusProxy;
        Hashtable environment = getEnvironment();
        try {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return partitionNexus.search(buildTarget, environment, presenceNode, searchControls);
        } finally {
            if (!(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public String composeName(String str, String str2) throws NamingException {
        return composeName(new LdapName(str), new LdapName(str2)).toString();
    }

    public Name composeName(Name name, Name name2) throws NamingException {
        if (name2 == null || name2.size() == 0) {
            return name;
        }
        LdapName buildTarget = buildTarget(name);
        String str = name2.get(0);
        while (buildTarget.size() > 0) {
            if (buildTarget.get(0).equalsIgnoreCase(str)) {
                return buildTarget;
            }
            buildTarget.remove(0);
        }
        throw new NamingException(new StringBuffer(String.valueOf(new StringBuffer("The prefix '").append(name2).append("' is not an ancestor of this ").toString())).append("entry '").append(this.dn).append("'").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LdapName buildTarget(Name name) throws InvalidNameException {
        LdapName ldapName = (LdapName) this.dn.clone();
        ldapName.addAll(ldapName.size(), name);
        return ldapName;
    }
}
