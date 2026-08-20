package org.apache.ldap.server;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.Name;
import javax.naming.NameNotFoundException;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.MultiException;
import org.apache.ldap.common.NotImplementedException;
import org.apache.ldap.common.exception.LdapNameNotFoundException;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.filter.PresenceNode;
import org.apache.ldap.common.message.LockableAttributeImpl;
import org.apache.ldap.common.message.LockableAttributes;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.util.SingletonEnumeration;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.slf4j.Marker;
/* loaded from: classes3.dex */
public class RootNexus implements PartitionNexus {
    private static final String ASF = "Apache Software Foundation";
    private static final String NAMINGCTXS_ATTR = "namingContexts";
    private static final String VENDORNAME_ATTR = "vendorName";
    private static RootNexus s_singleton;
    private final Attributes rootDSE;
    private SystemPartition system;
    private boolean closed = false;
    private HashMap backends = new HashMap();

    public RootNexus(SystemPartition systemPartition, Attributes attributes) {
        if (s_singleton != null) {
            throw new IllegalStateException();
        }
        s_singleton = this;
        this.system = systemPartition;
        this.rootDSE = attributes;
        LockableAttributeImpl lockableAttributeImpl = new LockableAttributeImpl("subschemaSubentry");
        lockableAttributeImpl.add("cn=schema,ou=system");
        attributes.put(lockableAttributeImpl);
        LockableAttributeImpl lockableAttributeImpl2 = new LockableAttributeImpl("supportedLDAPVersion");
        attributes.put(lockableAttributeImpl2);
        lockableAttributeImpl2.add(ExifInterface.GPS_MEASUREMENT_3D);
        LockableAttributeImpl lockableAttributeImpl3 = new LockableAttributeImpl(JavaLdapSupport.OBJECTCLASS_ATTR);
        attributes.put(lockableAttributeImpl3);
        lockableAttributeImpl3.add(JavaLdapSupport.TOP_ATTR);
        lockableAttributeImpl3.add("extensibleObject");
        attributes.put(new LockableAttributeImpl(NAMINGCTXS_ATTR));
        LockableAttributeImpl lockableAttributeImpl4 = new LockableAttributeImpl(VENDORNAME_ATTR);
        lockableAttributeImpl4.add(ASF);
        attributes.put(lockableAttributeImpl4);
        register(this.system);
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: org.apache.ldap.server.RootNexus.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (RootNexus.this.isClosed()) {
                        return;
                    }
                    RootNexus.this.close();
                } catch (NamingException e2) {
                    e2.printStackTrace();
                }
            }
        }, "RootNexusShutdownHook"));
    }

    @Override // org.apache.ldap.server.PartitionNexus
    public LdapContext getLdapContext() {
        throw new NotImplementedException();
    }

    @Override // org.apache.ldap.server.PartitionNexus
    public Name getMatchedDn(Name name, boolean z) throws NamingException {
        Name name2 = (Name) name.clone();
        while (name2.size() > 0 && !hasEntry(name2)) {
            name2 = name2.getSuffix(1);
        }
        return name2;
    }

    @Override // org.apache.ldap.server.PartitionNexus
    public Name getSuffix(Name name, boolean z) throws NamingException {
        return getBackend(name).getSuffix(z);
    }

    @Override // org.apache.ldap.server.PartitionNexus
    public Iterator listSuffixes(boolean z) throws NamingException {
        return Collections.unmodifiableSet(this.backends.keySet()).iterator();
    }

    public Attributes getRootDSE() {
        return this.rootDSE;
    }

    @Override // org.apache.ldap.server.PartitionNexus
    public void register(ContextPartition contextPartition) {
        this.rootDSE.get(NAMINGCTXS_ATTR).add(contextPartition.getSuffix(false).toString());
        this.backends.put(contextPartition.getSuffix(true).toString(), contextPartition);
    }

    @Override // org.apache.ldap.server.PartitionNexus
    public void unregister(ContextPartition contextPartition) {
        this.rootDSE.get(NAMINGCTXS_ATTR).remove(contextPartition.getSuffix(false).toString());
        this.backends.remove(contextPartition.getSuffix(true).toString());
    }

    @Override // org.apache.ldap.server.BackingStore
    public void delete(Name name) throws NamingException {
        getBackend(name).delete(name);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void add(String str, Name name, Attributes attributes) throws NamingException {
        getBackend(name).add(str, name, attributes);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void modify(Name name, int i, Attributes attributes) throws NamingException {
        getBackend(name).modify(name, i, attributes);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void modify(Name name, ModificationItem[] modificationItemArr) throws NamingException {
        getBackend(name).modify(name, modificationItemArr);
    }

    @Override // org.apache.ldap.server.BackingStore
    public NamingEnumeration list(Name name) throws NamingException {
        return getBackend(name).list(name);
    }

    @Override // org.apache.ldap.server.BackingStore
    public NamingEnumeration search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) throws NamingException {
        if (name.size() == 0) {
            boolean z = searchControls.getSearchScope() == 0;
            boolean equalsIgnoreCase = ((PresenceNode) exprNode).getAttribute().equalsIgnoreCase("objectclass");
            if ((exprNode instanceof PresenceNode) && z && equalsIgnoreCase) {
                Attributes attributes = (Attributes) getRootDSE().clone();
                String[] returningAttributes = searchControls.getReturningAttributes();
                if (returningAttributes != null && returningAttributes.length > 0) {
                    LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
                    int i = 0;
                    while (true) {
                        if (i >= returningAttributes.length) {
                            attributes = lockableAttributesImpl;
                            break;
                        } else if (returningAttributes[i].trim().equals(Marker.ANY_MARKER)) {
                            break;
                        } else {
                            if (attributes.get(returningAttributes[i]) != null) {
                                lockableAttributesImpl.put(attributes.get(returningAttributes[i]));
                            }
                            i++;
                        }
                    }
                }
                return new SingletonEnumeration(new SearchResult("", (Object) null, attributes, false));
            }
            throw new LdapNameNotFoundException();
        }
        return getBackend(name).search(name, map, exprNode, searchControls);
    }

    @Override // org.apache.ldap.server.BackingStore
    public Attributes lookup(Name name) throws NamingException {
        if (name.size() == 0) {
            LockableAttributes lockableAttributes = (LockableAttributes) this.rootDSE.clone();
            lockableAttributes.setLocked(true);
            return lockableAttributes;
        }
        return getBackend(name).lookup(name);
    }

    @Override // org.apache.ldap.server.BackingStore
    public Attributes lookup(Name name, String[] strArr) throws NamingException {
        if (name.size() == 0) {
            LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
            NamingEnumeration iDs = this.rootDSE.getIDs();
            while (iDs.hasMore()) {
                lockableAttributesImpl.put((Attribute) this.rootDSE.get((String) iDs.next()).clone());
            }
            lockableAttributesImpl.setLocked(true);
            return lockableAttributesImpl;
        }
        return getBackend(name).lookup(name, strArr);
    }

    @Override // org.apache.ldap.server.BackingStore
    public boolean hasEntry(Name name) throws NamingException {
        if (name.size() == 0) {
            return true;
        }
        return getBackend(name).hasEntry(name);
    }

    @Override // org.apache.ldap.server.BackingStore
    public boolean isSuffix(Name name) throws NamingException {
        return this.backends.containsKey(name.toString());
    }

    @Override // org.apache.ldap.server.BackingStore
    public void modifyRn(Name name, String str, boolean z) throws NamingException {
        getBackend(name).modifyRn(name, str, z);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void move(Name name, Name name2) throws NamingException {
        getBackend(name).move(name, name2);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void move(Name name, Name name2, String str, boolean z) throws NamingException {
        getBackend(name).move(name, name2, str, z);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void sync() throws NamingException {
        MultiException multiException = null;
        for (BackingStore backingStore : this.backends.values()) {
            try {
                backingStore.sync();
            } catch (NamingException e2) {
                e2.printStackTrace();
                if (multiException == null) {
                    multiException = new MultiException("Grouping many exceptions on root nexus sync()");
                }
                multiException.addThrowable(e2);
            }
        }
        if (multiException != null) {
            new NamingException("Encountered failures while performing a sync() operation on backing stores").setRootCause(multiException);
        }
    }

    @Override // org.apache.ldap.server.BackingStore
    public boolean isClosed() {
        return this.closed;
    }

    @Override // org.apache.ldap.server.BackingStore
    public synchronized void close() throws NamingException {
        if (this.closed) {
            return;
        }
        MultiException multiException = null;
        for (BackingStore backingStore : this.backends.values()) {
            try {
                backingStore.sync();
                backingStore.close();
            } catch (NamingException e2) {
                e2.printStackTrace();
                if (multiException == null) {
                    multiException = new MultiException("Grouping many exceptions on root nexus close()");
                }
                multiException.addThrowable(e2);
            }
        }
        s_singleton = null;
        this.closed = true;
        if (multiException == null) {
            return;
        }
        NamingException namingException = new NamingException("Encountered failures while performing a close() operation on backing stores");
        namingException.setRootCause(multiException);
        throw namingException;
    }

    private ContextPartition getBackend(Name name) throws NamingException {
        Name name2 = (Name) name.clone();
        while (name2.size() > 0) {
            if (this.backends.containsKey(name2.toString())) {
                return (ContextPartition) this.backends.get(name2.toString());
            }
            name2.remove(name2.size() - 1);
        }
        throw new NameNotFoundException();
    }
}
