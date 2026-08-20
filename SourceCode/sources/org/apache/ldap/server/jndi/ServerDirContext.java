package org.apache.ldap.server.jndi;

import java.io.IOException;
import java.io.Serializable;
import java.text.ParseException;
import java.util.Hashtable;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.Reference;
import javax.naming.Referenceable;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InvalidSearchFilterException;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import javax.naming.ldap.Control;
import javax.naming.spi.DirectoryManager;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.FilterParserImpl;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.filter.SimpleNode;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.util.NamespaceTools;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.authn.LdapPrincipal;
import org.apache.ldap.server.db.Database;
/* loaded from: classes3.dex */
public abstract class ServerDirContext extends ServerContext implements DirContext {
    public ServerDirContext(PartitionNexus partitionNexus, Hashtable hashtable) throws NamingException {
        super(partitionNexus, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ServerDirContext(LdapPrincipal ldapPrincipal, PartitionNexus partitionNexus, Hashtable hashtable, Name name) {
        super(ldapPrincipal, partitionNexus, hashtable, name);
    }

    public Attributes getAttributes(String str) throws NamingException {
        return getAttributes(new LdapName(str));
    }

    public Attributes getAttributes(Name name) throws NamingException {
        PartitionNexus nexusProxy = getNexusProxy();
        LdapName buildTarget = buildTarget(name);
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return nexusProxy.lookup(buildTarget);
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public Attributes getAttributes(String str, String[] strArr) throws NamingException {
        return getAttributes(new LdapName(str), strArr);
    }

    public Attributes getAttributes(Name name, String[] strArr) throws NamingException {
        PartitionNexus nexusProxy = getNexusProxy();
        LdapName buildTarget = buildTarget(name);
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return nexusProxy.lookup(buildTarget, strArr);
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public void modifyAttributes(String str, int i, Attributes attributes) throws NamingException {
        modifyAttributes(new LdapName(str), i, attributes);
    }

    public void modifyAttributes(Name name, int i, Attributes attributes) throws NamingException {
        boolean z;
        PartitionNexus nexusProxy = getNexusProxy();
        LdapName buildTarget = buildTarget(name);
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            nexusProxy.modify(buildTarget, i, attributes);
            if (z) {
                return;
            }
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public void modifyAttributes(String str, ModificationItem[] modificationItemArr) throws NamingException {
        modifyAttributes(new LdapName(str), modificationItemArr);
    }

    public void modifyAttributes(Name name, ModificationItem[] modificationItemArr) throws NamingException {
        boolean z;
        PartitionNexus nexusProxy = getNexusProxy();
        LdapName buildTarget = buildTarget(name);
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            nexusProxy.modify(buildTarget, modificationItemArr);
            if (z) {
                return;
            }
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public void bind(String str, Object obj, Attributes attributes) throws NamingException {
        bind(new LdapName(str), obj, attributes);
    }

    public void bind(Name name, Object obj, Attributes attributes) throws NamingException {
        PartitionNexus nexusProxy;
        boolean z;
        if (obj == null && attributes == null) {
            throw new NamingException("Both obj and attrs args are null. At least one of these parameters must not be null.");
        }
        if (attributes == null) {
            super.bind(name, obj);
        } else if (obj == null) {
            Attributes attributes2 = (Attributes) attributes.clone();
            LdapName buildTarget = buildTarget(name);
            nexusProxy = getNexusProxy();
            String obj2 = buildTarget.toString();
            try {
                if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                }
                nexusProxy.add(obj2, buildTarget, attributes2);
                if (z) {
                    return;
                }
            } finally {
                if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                }
            }
        } else {
            Attributes attributes3 = DirectoryManager.getStateToBind(obj, name, this, getEnvironment(), attributes).getAttributes();
            if (attributes3 != attributes) {
                LdapName buildTarget2 = buildTarget(name);
                Attributes attributes4 = (Attributes) attributes.clone();
                if (attributes3 != null && attributes3.size() > 0) {
                    NamingEnumeration all = attributes3.getAll();
                    while (all.hasMore()) {
                        attributes4.put((Attribute) all.next());
                    }
                }
                PartitionNexus nexusProxy2 = getNexusProxy();
                String obj3 = buildTarget2.toString();
                try {
                    if (!(this instanceof ContextPartition) && !(nexusProxy2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                    }
                    nexusProxy2.add(obj3, buildTarget2, attributes4);
                    if ((this instanceof ContextPartition) || (nexusProxy2 instanceof Database)) {
                        return;
                    }
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                } finally {
                    if (!(this instanceof ContextPartition) && !(nexusProxy2 instanceof Database)) {
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
                    Attributes attributes5 = (Attributes) attributes.clone();
                    if (attributes3 != null && attributes3.size() > 0) {
                        NamingEnumeration all2 = attributes3.getAll();
                        while (all2.hasMore()) {
                            attributes5.put((Attribute) all2.next());
                        }
                    }
                    LdapName buildTarget3 = buildTarget(name);
                    JavaLdapSupport.serialize(attributes5, obj);
                    nexusProxy = getNexusProxy();
                    String obj4 = buildTarget3.toString();
                    try {
                        if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                        }
                        nexusProxy.add(obj4, buildTarget3, attributes5);
                        if ((this instanceof ContextPartition) || (nexusProxy instanceof Database)) {
                            return;
                        }
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                    } finally {
                        if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                        }
                    }
                } else if (obj instanceof DirContext) {
                    Attributes attributes6 = ((DirContext) obj).getAttributes("");
                    if (attributes3 != null && attributes3.size() > 0) {
                        NamingEnumeration all3 = attributes3.getAll();
                        while (all3.hasMore()) {
                            attributes6.put((Attribute) all3.next());
                        }
                    }
                    LdapName buildTarget4 = buildTarget(name);
                    PartitionNexus nexusProxy3 = getNexusProxy();
                    String obj5 = buildTarget4.toString();
                    try {
                        if (!(this instanceof ContextPartition) && !(nexusProxy3 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                        }
                        nexusProxy3.add(obj5, buildTarget4, attributes6);
                        if ((this instanceof ContextPartition) || (nexusProxy3 instanceof Database)) {
                            return;
                        }
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                    } finally {
                        if (!(this instanceof ContextPartition) && !(nexusProxy3 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                        }
                    }
                } else {
                    throw new NamingException(new StringBuffer("Can't find a way to bind: ").append(obj).toString());
                }
            }
        }
    }

    public void rebind(String str, Object obj, Attributes attributes) throws NamingException {
        rebind(new LdapName(str), obj, attributes);
    }

    public void rebind(Name name, Object obj, Attributes attributes) throws NamingException {
        boolean z;
        LdapName buildTarget = buildTarget(name);
        PartitionNexus nexusProxy = getNexusProxy();
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            if (nexusProxy.hasEntry(buildTarget)) {
                PartitionNexus nexusProxy2 = getNexusProxy();
                try {
                    if (!(this instanceof ContextPartition) && !(nexusProxy2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                    }
                    nexusProxy2.delete(buildTarget);
                } finally {
                    if (!z && !(nexusProxy2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                    }
                }
            }
            bind(name, obj, attributes);
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public DirContext createSubcontext(String str, Attributes attributes) throws NamingException {
        return createSubcontext(new LdapName(str), attributes);
    }

    public DirContext createSubcontext(Name name, Attributes attributes) throws NamingException {
        Control[] controlArr;
        if (attributes == null) {
            return super.createSubcontext(name);
        }
        LdapName buildTarget = buildTarget(name);
        String str = name.get(name.size() - 1);
        String rdnAttribute = NamespaceTools.getRdnAttribute(str);
        String rdnValue = NamespaceTools.getRdnValue(str);
        Attributes attributes2 = (Attributes) attributes.clone();
        if (attributes2.get(rdnAttribute) == null || attributes2.get(rdnAttribute).size() == 0 || !attributes2.get(rdnAttribute).contains(rdnValue)) {
            attributes2.put(rdnAttribute, rdnValue);
        }
        PartitionNexus nexusProxy = getNexusProxy();
        String ldapName = buildTarget.toString();
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            nexusProxy.add(ldapName, buildTarget, attributes2);
            ServerLdapContext serverLdapContext = new ServerLdapContext(getPrincipal(), getNexusProxy(), getEnvironment(), buildTarget);
            Control[] requestControls = ((ServerLdapContext) this).getRequestControls();
            if (requestControls != null) {
                controlArr = (Control[]) requestControls.clone();
            } else {
                controlArr = new Control[0];
            }
            serverLdapContext.setRequestControls(controlArr);
            return serverLdapContext;
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public DirContext getSchema(Name name) throws NamingException {
        throw new UnsupportedOperationException();
    }

    public DirContext getSchema(String str) throws NamingException {
        throw new UnsupportedOperationException();
    }

    public DirContext getSchemaClassDefinition(Name name) throws NamingException {
        throw new UnsupportedOperationException();
    }

    public DirContext getSchemaClassDefinition(String str) throws NamingException {
        throw new UnsupportedOperationException();
    }

    public NamingEnumeration search(String str, Attributes attributes) throws NamingException {
        return search(new LdapName(str), attributes, (String[]) null);
    }

    public NamingEnumeration search(Name name, Attributes attributes) throws NamingException {
        return search(name, attributes, (String[]) null);
    }

    public NamingEnumeration search(String str, Attributes attributes, String[] strArr) throws NamingException {
        return search(new LdapName(str), attributes, strArr);
    }

    public NamingEnumeration search(Name name, Attributes attributes, String[] strArr) throws NamingException {
        PartitionNexus nexusProxy;
        SearchControls searchControls = new SearchControls();
        LdapName buildTarget = buildTarget(name);
        if (strArr != null) {
            searchControls.setReturningAttributes(strArr);
        }
        if (attributes == null || attributes.size() <= 0) {
            PresenceNode presenceNode = new PresenceNode(JavaLdapSupport.OBJECTCLASS_ATTR);
            nexusProxy = getNexusProxy();
            Hashtable environment = getEnvironment();
            try {
                if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
                }
                NamingEnumeration search = nexusProxy.search(buildTarget, environment, presenceNode, searchControls);
                if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                }
                return search;
            } finally {
                if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
                }
            }
        }
        BranchNode branchNode = new BranchNode(10);
        NamingEnumeration all = attributes.getAll();
        while (all.hasMore()) {
            Attribute attribute = (Attribute) all.next();
            if (attribute.size() == 0) {
                branchNode.addNode(new PresenceNode(attribute.getID()));
            } else {
                for (int i = 0; i < attribute.size(); i++) {
                    Object obj = attribute.get(i);
                    if (obj instanceof String) {
                        branchNode.addNode(new SimpleNode(attribute.getID(), (String) obj, 0));
                    }
                }
            }
        }
        nexusProxy = getNexusProxy();
        Hashtable environment2 = getEnvironment();
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return nexusProxy.search(buildTarget, environment2, branchNode, searchControls);
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public NamingEnumeration search(String str, String str2, SearchControls searchControls) throws NamingException {
        return search(new LdapName(str), str2, searchControls);
    }

    public NamingEnumeration search(Name name, String str, SearchControls searchControls) throws NamingException {
        ExprNode parse;
        LdapName buildTarget = buildTarget(name);
        if (str == null && getEnvironment().containsKey("__filter__")) {
            parse = (ExprNode) getEnvironment().get("__filter__");
        } else {
            try {
                parse = new FilterParserImpl().parse(str);
            } catch (IOException e2) {
                NamingException namingException = new NamingException(new StringBuffer("Parser failed with IO exception on filter: '").append(str).append("'").toString());
                namingException.setRootCause(e2);
                throw namingException;
            } catch (ParseException e3) {
                InvalidSearchFilterException invalidSearchFilterException = new InvalidSearchFilterException(new StringBuffer("Encountered parse exception while parsing the filter: '").append(str).append("'").toString());
                invalidSearchFilterException.setRootCause(e3);
                throw invalidSearchFilterException;
            }
        }
        PartitionNexus nexusProxy = getNexusProxy();
        Hashtable environment = getEnvironment();
        try {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095(this);
            }
            return nexusProxy.search(buildTarget, environment, parse, searchControls);
        } finally {
            if (!(this instanceof ContextPartition) && !(nexusProxy instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095(this);
            }
        }
    }

    public NamingEnumeration search(String str, String str2, Object[] objArr, SearchControls searchControls) throws NamingException {
        return search(new LdapName(str), str2, objArr, searchControls);
    }

    public NamingEnumeration search(Name name, String str, Object[] objArr, SearchControls searchControls) throws NamingException {
        StringBuffer stringBuffer = new StringBuffer(str);
        int i = 0;
        while (i < stringBuffer.length()) {
            while ('{' != stringBuffer.charAt(i)) {
                i++;
            }
            int i2 = i;
            while ('}' != stringBuffer.charAt(i2)) {
                i2++;
            }
            int i3 = i2 + 1;
            stringBuffer.replace(i, i3, objArr[i2].toString());
            i = i3;
        }
        return search(name, stringBuffer.toString(), searchControls);
    }
}
