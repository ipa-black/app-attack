package org.apache.ldap.server.prefs;

import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.prefs.AbstractPreferences;
import java.util.prefs.BackingStoreException;
import javax.naming.NameClassPair;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.ModificationItem;
import javax.naming.ldap.Control;
import javax.naming.ldap.InitialLdapContext;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.message.LockableAttributeImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.util.PreferencesDictionary;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* loaded from: classes3.dex */
public class ServerSystemPreferences extends AbstractPreferences {
    private static final ModificationItem[] EMPTY_MODS = new ModificationItem[0];
    private static final String[] EMPTY_STRINGS = new String[0];
    static /* synthetic */ Class class$0;
    private ArrayList changes;
    private LdapContext ctx;
    private HashMap keyToChange;

    public ServerSystemPreferences() {
        super(null, "");
        this.changes = new ArrayList(3);
        this.keyToChange = new HashMap(3);
        ((AbstractPreferences) this).newNode = false;
        Hashtable hashtable = new Hashtable();
        Class<?> cls = class$0;
        if (cls == null) {
            try {
                cls = Class.forName("org.apache.ldap.server.jndi.CoreContextFactory");
                class$0 = cls;
            } catch (ClassNotFoundException e2) {
                throw new NoClassDefFoundError(e2.getMessage());
            }
        }
        hashtable.put("java.naming.factory.initial", cls.getName());
        hashtable.put("java.naming.provider.url", "prefNodeName=sysPrefRoot,ou=system");
        try {
            this.ctx = new InitialLdapContext(hashtable, (Control[]) null);
        } catch (NamingException e3) {
            e3.printStackTrace();
        }
    }

    public ServerSystemPreferences(ServerSystemPreferences serverSystemPreferences, String str) {
        super(serverSystemPreferences, str);
        this.changes = new ArrayList(3);
        this.keyToChange = new HashMap(3);
        try {
            this.ctx = (LdapContext) serverSystemPreferences.getLdapContext().lookup(new StringBuffer("prefNodeName=").append(str).toString());
            ((AbstractPreferences) this).newNode = false;
        } catch (NamingException unused) {
            ((AbstractPreferences) this).newNode = true;
        }
        if (((AbstractPreferences) this).newNode) {
            try {
                setUpNode(str);
            } catch (NamingException e2) {
                e2.printStackTrace();
            }
        }
    }

    public Dictionary wrapAsDictionary() {
        return new PreferencesDictionary(this);
    }

    LdapContext getLdapContext() {
        return this.ctx;
    }

    private void setUpNode(String str) throws NamingException {
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        LockableAttributesImpl lockableAttributesImpl2 = lockableAttributesImpl;
        LockableAttributeImpl lockableAttributeImpl = new LockableAttributeImpl(lockableAttributesImpl2, JavaLdapSupport.OBJECTCLASS_ATTR);
        lockableAttributeImpl.add(JavaLdapSupport.TOP_ATTR);
        lockableAttributeImpl.add("prefNode");
        lockableAttributeImpl.add("extensibleObject");
        lockableAttributesImpl.put(lockableAttributeImpl);
        LockableAttributeImpl lockableAttributeImpl2 = new LockableAttributeImpl(lockableAttributesImpl2, "prefNodeName");
        lockableAttributeImpl2.add(str);
        lockableAttributesImpl.put(lockableAttributeImpl2);
        LdapContext ldapContext = ((ServerSystemPreferences) parent()).getLdapContext();
        ldapContext.bind(new StringBuffer("prefNodeName=").append(str).toString(), (Object) null, lockableAttributesImpl);
        this.ctx = (LdapContext) ldapContext.lookup(new StringBuffer("prefNodeName=").append(str).toString());
        ((AbstractPreferences) this).newNode = false;
    }

    @Override // java.util.prefs.AbstractPreferences
    protected void flushSpi() throws BackingStoreException {
        if (this.ctx == null) {
            throw new BackingStoreException(new StringBuffer("Ldap context not available for ").append(super.absolutePath()).toString());
        }
        if (this.changes.isEmpty()) {
            return;
        }
        try {
            this.ctx.modifyAttributes("", (ModificationItem[]) this.changes.toArray(EMPTY_MODS));
            this.changes.clear();
            this.keyToChange.clear();
        } catch (NamingException e2) {
            throw new BackingStoreException((Throwable) e2);
        }
    }

    @Override // java.util.prefs.AbstractPreferences
    protected void removeNodeSpi() throws BackingStoreException {
        try {
            this.ctx.destroySubcontext("");
            this.ctx = null;
            this.changes.clear();
            this.keyToChange.clear();
        } catch (NamingException e2) {
            throw new BackingStoreException((Throwable) e2);
        }
    }

    @Override // java.util.prefs.AbstractPreferences
    protected void syncSpi() throws BackingStoreException {
        if (this.ctx == null) {
            throw new BackingStoreException(new StringBuffer("Ldap context not available for ").append(super.absolutePath()).toString());
        }
        if (this.changes.isEmpty()) {
            return;
        }
        try {
            this.ctx.modifyAttributes("", (ModificationItem[]) this.changes.toArray(EMPTY_MODS));
            this.changes.clear();
            this.keyToChange.clear();
        } catch (NamingException e2) {
            throw new BackingStoreException((Throwable) e2);
        }
    }

    @Override // java.util.prefs.AbstractPreferences
    protected String[] childrenNamesSpi() throws BackingStoreException {
        ArrayList arrayList = new ArrayList();
        try {
            NamingEnumeration list = this.ctx.list("");
            while (list.hasMore()) {
                arrayList.add(((NameClassPair) list.next()).getName());
            }
            return (String[]) arrayList.toArray(EMPTY_STRINGS);
        } catch (NamingException e2) {
            throw new BackingStoreException((Throwable) e2);
        }
    }

    @Override // java.util.prefs.AbstractPreferences
    protected String[] keysSpi() throws BackingStoreException {
        ArrayList arrayList = new ArrayList();
        try {
            NamingEnumeration iDs = this.ctx.getAttributes("").getIDs();
            while (iDs.hasMore()) {
                String str = (String) iDs.next();
                if (!str.equals(JavaLdapSupport.OBJECTCLASS_ATTR) && !str.equals("prefNodeName")) {
                    arrayList.add(str);
                }
            }
            return (String[]) arrayList.toArray(EMPTY_STRINGS);
        } catch (NamingException e2) {
            throw new BackingStoreException((Throwable) e2);
        }
    }

    @Override // java.util.prefs.AbstractPreferences
    protected void removeSpi(String str) {
        addDelta(new ModificationItem(3, new BasicAttribute(str)));
    }

    private void addDelta(ModificationItem modificationItem) {
        List arrayList;
        String id = modificationItem.getAttribute().getID();
        this.changes.add(modificationItem);
        if (this.keyToChange.containsKey(id)) {
            arrayList = (List) this.keyToChange.get(id);
        } else {
            arrayList = new ArrayList();
        }
        arrayList.add(modificationItem);
        this.keyToChange.put(id, arrayList);
    }

    @Override // java.util.prefs.AbstractPreferences
    protected String getSpi(String str) {
        try {
            Attribute attribute = this.ctx.getAttributes("").get(str);
            if (this.keyToChange.containsKey(str)) {
                List list = (List) this.keyToChange.get(str);
                for (int i = 0; i < list.size(); i++) {
                    ModificationItem modificationItem = (ModificationItem) list.get(i);
                    attribute = modificationItem.getModificationOp() == 3 ? null : modificationItem.getAttribute();
                }
            }
            if (attribute == null) {
                return null;
            }
            return (String) attribute.get();
        } catch (NamingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // java.util.prefs.AbstractPreferences
    protected void putSpi(String str, String str2) {
        BasicAttribute basicAttribute = new BasicAttribute(str);
        basicAttribute.add(str2);
        addDelta(new ModificationItem(2, basicAttribute));
    }

    @Override // java.util.prefs.AbstractPreferences
    protected AbstractPreferences childSpi(String str) {
        return new ServerSystemPreferences(this, str);
    }
}
