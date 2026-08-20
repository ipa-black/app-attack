package org.apache.ldap.server;

import java.math.BigInteger;
import java.util.HashSet;
import java.util.Map;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import org.apache.ldap.common.exception.LdapContextNotEmptyException;
import org.apache.ldap.common.exception.LdapNameNotFoundException;
import org.apache.ldap.common.filter.ExprNode;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.util.ArrayUtils;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.SearchEngine;
import org.apache.ldap.server.db.SearchResultEnumeration;
import org.apache.ldap.server.db.gui.PartitionViewer;
/* loaded from: classes3.dex */
public abstract class AbstractContextPartition implements ContextPartition {
    public static final String ALIAS_OID = "1.2.6.1.4.1.18060.1.1.1.3.7";
    public static final String EXISTANCE_OID = "1.2.6.1.4.1.18060.1.1.1.3.3";
    public static final String HIERARCHY_OID = "1.2.6.1.4.1.18060.1.1.1.3.4";
    public static final String NDN_OID = "1.2.6.1.4.1.18060.1.1.1.3.1";
    public static final String ONEALIAS_OID = "1.2.6.1.4.1.18060.1.1.1.3.5";
    public static final String SUBALIAS_OID = "1.2.6.1.4.1.18060.1.1.1.3.6";
    public static final String UPDN_OID = "1.2.6.1.4.1.18060.1.1.1.3.2";
    private Database db;
    private SearchEngine engine;

    public AbstractContextPartition(Database database, SearchEngine searchEngine, AttributeType[] attributeTypeArr) throws NamingException {
        this.db = database;
        this.engine = searchEngine;
        HashSet hashSet = new HashSet();
        hashSet.add(EXISTANCE_OID);
        hashSet.add(HIERARCHY_OID);
        hashSet.add(UPDN_OID);
        hashSet.add(NDN_OID);
        hashSet.add(ONEALIAS_OID);
        hashSet.add(SUBALIAS_OID);
        hashSet.add(ALIAS_OID);
        for (int i = 0; i < attributeTypeArr.length; i++) {
            String oid = attributeTypeArr[i].getOid();
            if (hashSet.contains(oid)) {
                if (oid.equals(EXISTANCE_OID)) {
                    database.setExistanceIndexOn(attributeTypeArr[i]);
                } else if (oid.equals(HIERARCHY_OID)) {
                    database.setHierarchyIndexOn(attributeTypeArr[i]);
                } else if (oid.equals(UPDN_OID)) {
                    database.setUpdnIndexOn(attributeTypeArr[i]);
                } else if (oid.equals(NDN_OID)) {
                    database.setNdnIndexOn(attributeTypeArr[i]);
                } else if (oid.equals(ONEALIAS_OID)) {
                    database.setOneAliasIndexOn(attributeTypeArr[i]);
                } else if (oid.equals(SUBALIAS_OID)) {
                    database.setSubAliasIndexOn(attributeTypeArr[i]);
                } else if (oid.equals(ALIAS_OID)) {
                    database.setAliasIndexOn(attributeTypeArr[i]);
                } else {
                    throw new NamingException(new StringBuffer("Unidentified system index ").append(oid).toString());
                }
            } else {
                database.addIndexOn(attributeTypeArr[i]);
            }
        }
    }

    public Database getDb() {
        return this.db;
    }

    public SearchEngine getEngine() {
        return this.engine;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapContextNotEmptyException] */
    @Override // org.apache.ldap.server.BackingStore
    public void delete(Name name) throws NamingException {
        BigInteger entryId = this.db.getEntryId(name.toString());
        if (entryId == null) {
            throw new LdapNameNotFoundException(new StringBuffer("Could not find entry at '").append(name).append("' to delete it!").toString());
        }
        if (this.db.getChildCount(entryId) > 0) {
            ?? ldapContextNotEmptyException = new LdapContextNotEmptyException(new StringBuffer("[66] Cannot delete entry ").append(name).append(" it has children!").toString());
            ldapContextNotEmptyException.setRemainingName(name);
            throw ldapContextNotEmptyException;
        }
        this.db.delete(entryId);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void add(String str, Name name, Attributes attributes) throws NamingException {
        this.db.add(str, name, attributes);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void modify(Name name, int i, Attributes attributes) throws NamingException {
        this.db.modify(name, i, attributes);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void modify(Name name, ModificationItem[] modificationItemArr) throws NamingException {
        this.db.modify(name, modificationItemArr);
    }

    @Override // org.apache.ldap.server.BackingStore
    public NamingEnumeration list(Name name) throws NamingException {
        String[] strArr = ArrayUtils.EMPTY_STRING_ARRAY;
        Database database = this.db;
        return new SearchResultEnumeration(strArr, database.list(database.getEntryId(name.toString())), this.db);
    }

    @Override // org.apache.ldap.server.BackingStore
    public NamingEnumeration search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) throws NamingException {
        return new SearchResultEnumeration(searchControls.getReturningAttributes(), this.engine.search(name, map, exprNode, searchControls), this.db);
    }

    @Override // org.apache.ldap.server.BackingStore
    public Attributes lookup(Name name) throws NamingException {
        Database database = this.db;
        return database.lookup(database.getEntryId(name.toString()));
    }

    @Override // org.apache.ldap.server.BackingStore
    public Attributes lookup(Name name, String[] strArr) throws NamingException {
        if (strArr == null || strArr.length == 0) {
            return lookup(name);
        }
        Attributes lookup = lookup(name);
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        for (int i = 0; i < strArr.length; i++) {
            Attribute attribute = lookup.get(strArr[0]);
            if (attribute != null) {
                lockableAttributesImpl.put(attribute);
            }
        }
        return lockableAttributesImpl;
    }

    @Override // org.apache.ldap.server.BackingStore
    public boolean hasEntry(Name name) throws NamingException {
        return this.db.getEntryId(name.toString()) != null;
    }

    @Override // org.apache.ldap.server.BackingStore
    public void modifyRn(Name name, String str, boolean z) throws NamingException {
        this.db.modifyRdn(name, str, z);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void move(Name name, Name name2) throws NamingException {
        this.db.move(name, name2);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void move(Name name, Name name2, String str, boolean z) throws NamingException {
        this.db.move(name, name2, str, z);
    }

    @Override // org.apache.ldap.server.BackingStore
    public void sync() throws NamingException {
        this.db.sync();
    }

    @Override // org.apache.ldap.server.BackingStore
    public void close() throws NamingException {
        this.db.close();
    }

    @Override // org.apache.ldap.server.BackingStore
    public boolean isClosed() {
        return this.db.isClosed();
    }

    public void inspect() throws Exception {
        new PartitionViewer(this.db, this.engine).execute();
    }
}
