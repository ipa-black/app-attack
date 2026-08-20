package org.apache.ldap.server;

import javax.naming.InvalidNameException;
import javax.naming.Name;
import javax.naming.NamingException;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.util.DateUtils;
import org.apache.ldap.common.util.NamespaceTools;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.SearchEngine;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* loaded from: classes3.dex */
public final class SystemPartition extends AbstractContextPartition {
    public static final String ADMIN_PRINCIPAL = "uid=admin,ou=system";
    public static final byte[] ADMIN_PW = "secret".getBytes();
    public static final String ADMIN_UID = "admin";
    public static final String GROUPS_BASE_DN = "ou=groups,ou=system";
    public static final String SUFFIX = "ou=system";
    public static final String USERS_BASE_DN = "ou=users,ou=system";
    private final Name suffix;

    public static final Name getUsersBaseDn() {
        try {
            return new LdapName(USERS_BASE_DN);
        } catch (NamingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static final Name getGroupsBaseDn() {
        try {
            return new LdapName(GROUPS_BASE_DN);
        } catch (NamingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static final Name getAdminDn() {
        try {
            return new LdapName(ADMIN_PRINCIPAL);
        } catch (NamingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public SystemPartition(Database database, SearchEngine searchEngine, AttributeType[] attributeTypeArr) throws NamingException {
        super(database, searchEngine, attributeTypeArr);
        LdapName ldapName = new LdapName();
        this.suffix = ldapName;
        try {
            ldapName.add(SUFFIX);
        } catch (InvalidNameException unused) {
        }
        if (database.getSuffixEntry() == null) {
            LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
            lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
            lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, "organizationalUnit");
            lockableAttributesImpl.put("creatorsName", ADMIN_PRINCIPAL);
            lockableAttributesImpl.put("createTimestamp", DateUtils.getGeneralizedTime());
            lockableAttributesImpl.put(NamespaceTools.getRdnAttribute(SUFFIX), NamespaceTools.getRdnValue(SUFFIX));
            getDb().add(SUFFIX, this.suffix, lockableAttributesImpl);
        }
    }

    @Override // org.apache.ldap.server.ContextPartition
    public final Name getSuffix(boolean z) {
        return (Name) this.suffix.clone();
    }

    @Override // org.apache.ldap.server.BackingStore
    public final boolean isSuffix(Name name) {
        return SUFFIX.equals(name.toString());
    }
}
