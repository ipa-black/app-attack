package org.apache.ldap.server.db.jdbm;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.ModificationItem;
import jdbm.RecordManager;
import jdbm.helper.MRU;
import jdbm.recman.BaseRecordManager;
import jdbm.recman.CacheRecordManager;
import org.apache.ldap.common.MultiException;
import org.apache.ldap.common.exception.LdapNameNotFoundException;
import org.apache.ldap.common.exception.LdapSchemaViolationException;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.util.NamespaceTools;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.Index;
import org.apache.ldap.server.db.IndexAssertion;
import org.apache.ldap.server.db.IndexAssertionEnumeration;
import org.apache.ldap.server.db.IndexEnumeration;
import org.apache.ldap.server.db.IndexNotFoundException;
import org.apache.ldap.server.db.IndexRecord;
import org.apache.ldap.server.db.MasterTable;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* loaded from: classes3.dex */
public class JdbmDatabase implements Database {
    private Index aliasIdx;
    private boolean closed = false;
    private Index existanceIdx;
    private Index hierarchyIdx;
    private final Map indices;
    private final JdbmMasterTable master;
    private Index ndnIdx;
    private final Name normSuffix;
    private Index oneAliasIdx;
    private final RecordManager recMan;
    private Index subAliasIdx;
    private final Map sysIndices;
    private final Name upSuffix;
    private Index updnIdx;
    private final String wkdir;

    public JdbmDatabase(Name name, Name name2, String str) throws NamingException {
        this.upSuffix = name;
        this.normSuffix = name2;
        this.wkdir = str;
        try {
            BaseRecordManager baseRecordManager = new BaseRecordManager(new StringBuffer(String.valueOf(str)).append(File.separator).append(MasterTable.DBF).toString());
            baseRecordManager.disableTransactions();
            CacheRecordManager cacheRecordManager = new CacheRecordManager(baseRecordManager, new MRU(1000));
            this.recMan = cacheRecordManager;
            this.master = new JdbmMasterTable(cacheRecordManager);
            this.indices = new HashMap();
            this.sysIndices = new HashMap();
        } catch (IOException e2) {
            NamingException namingException = new NamingException("Could not initialize RecordManager");
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.db.Database
    public void addIndexOn(AttributeType attributeType) throws NamingException {
        this.indices.put(attributeType.getName().toLowerCase(), new JdbmIndex(attributeType, this.wkdir));
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getExistanceIndex() {
        return this.existanceIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setExistanceIndexOn(AttributeType attributeType) throws NamingException {
        if (this.existanceIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.existanceIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.existanceIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getHierarchyIndex() {
        return this.hierarchyIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setHierarchyIndexOn(AttributeType attributeType) throws NamingException {
        if (this.hierarchyIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.hierarchyIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.hierarchyIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getAliasIndex() {
        return this.aliasIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setAliasIndexOn(AttributeType attributeType) throws NamingException {
        if (this.aliasIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.aliasIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.aliasIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getOneAliasIndex() {
        return this.oneAliasIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setOneAliasIndexOn(AttributeType attributeType) throws NamingException {
        if (this.oneAliasIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.oneAliasIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.oneAliasIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getSubAliasIndex() {
        return this.subAliasIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setSubAliasIndexOn(AttributeType attributeType) throws NamingException {
        if (this.subAliasIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.subAliasIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.subAliasIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getUpdnIndex() {
        return this.updnIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setUpdnIndexOn(AttributeType attributeType) throws NamingException {
        if (this.updnIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.updnIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.updnIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getNdnIndex() {
        return this.ndnIdx;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setNdnIndexOn(AttributeType attributeType) throws NamingException {
        if (this.ndnIdx != null) {
            throw new NamingException("Index already set!");
        }
        this.ndnIdx = new JdbmIndex(attributeType, this.wkdir);
        this.sysIndices.put(attributeType.getName().toLowerCase(), this.ndnIdx);
    }

    @Override // org.apache.ldap.server.db.Database
    public Iterator getUserIndices() {
        return this.indices.keySet().iterator();
    }

    @Override // org.apache.ldap.server.db.Database
    public Iterator getSystemIndices() {
        return this.sysIndices.keySet().iterator();
    }

    @Override // org.apache.ldap.server.db.Database
    public boolean hasUserIndexOn(String str) {
        return this.indices.containsKey(str) || this.indices.containsKey(str.toLowerCase());
    }

    @Override // org.apache.ldap.server.db.Database
    public boolean hasSystemIndexOn(String str) {
        return this.sysIndices.containsKey(str) || this.sysIndices.containsKey(str.toLowerCase());
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getUserIndex(String str) throws IndexNotFoundException {
        String lowerCase = str.toLowerCase();
        if (this.indices.containsKey(str)) {
            return (Index) this.indices.get(str);
        }
        if (this.indices.containsKey(lowerCase)) {
            return (Index) this.indices.get(lowerCase);
        }
        throw new IndexNotFoundException(new StringBuffer("An index on attribute ").append(str).append(" does not exist!").toString());
    }

    @Override // org.apache.ldap.server.db.Database
    public Index getSystemIndex(String str) throws IndexNotFoundException {
        String lowerCase = str.toLowerCase();
        if (this.sysIndices.containsKey(str)) {
            return (Index) this.sysIndices.get(str);
        }
        if (this.sysIndices.containsKey(lowerCase)) {
            return (Index) this.sysIndices.get(lowerCase);
        }
        throw new IndexNotFoundException(new StringBuffer("A system index by the name of ").append(str).append(" does not exist!").toString());
    }

    @Override // org.apache.ldap.server.db.Database
    public BigInteger getEntryId(String str) throws NamingException {
        return this.ndnIdx.forwardLookup(str);
    }

    @Override // org.apache.ldap.server.db.Database
    public String getEntryDn(BigInteger bigInteger) throws NamingException {
        return (String) this.ndnIdx.reverseLookup(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public BigInteger getParentId(String str) throws NamingException {
        return (BigInteger) this.hierarchyIdx.reverseLookup(this.ndnIdx.forwardLookup(str));
    }

    @Override // org.apache.ldap.server.db.Database
    public BigInteger getParentId(BigInteger bigInteger) throws NamingException {
        return (BigInteger) this.hierarchyIdx.reverseLookup(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public String getEntryUpdn(BigInteger bigInteger) throws NamingException {
        return (String) this.updnIdx.reverseLookup(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public String getEntryUpdn(String str) throws NamingException {
        return (String) this.updnIdx.reverseLookup(this.ndnIdx.forwardLookup(str));
    }

    @Override // org.apache.ldap.server.db.Database
    public int count() throws NamingException {
        return this.master.count();
    }

    private void dropAliasIndices(BigInteger bigInteger) throws NamingException {
        BigInteger entryId = getEntryId((String) this.aliasIdx.reverseLookup(bigInteger));
        Name suffix = new LdapName(getEntryDn(bigInteger)).getSuffix(1);
        BigInteger entryId2 = getEntryId(suffix.toString());
        this.oneAliasIdx.drop(entryId2, entryId);
        this.subAliasIdx.drop(entryId2, entryId);
        while (!suffix.equals(this.upSuffix)) {
            suffix = suffix.getSuffix(1);
            this.subAliasIdx.drop(getEntryId(suffix.toString()), entryId);
        }
        this.aliasIdx.drop(bigInteger);
    }

    private void addAliasIndices(BigInteger bigInteger, Name name, String str) throws NamingException {
        LdapName ldapName = new LdapName((String) this.oneAliasIdx.getAttribute().getEquality().getNormalizer().normalize(str));
        if (name.startsWith(ldapName)) {
            if (name.equals(ldapName)) {
                throw new NamingException("[36] aliasDereferencingProblem - attempt to create alias to itself.");
            }
            throw new NamingException(new StringBuffer("[36] aliasDereferencingProblem - attempt to create alias with cycle to relative ").append(str).append(" not allowed from descendent alias ").append(name).toString());
        } else if (!ldapName.startsWith(this.upSuffix)) {
            throw new NamingException(new StringBuffer("[36] aliasDereferencingProblem - the alias points to an entry outside of the ").append(this.upSuffix).append(" namingContext to an object whose existance cannot be determined.").toString());
        } else {
            BigInteger forwardLookup = this.ndnIdx.forwardLookup(ldapName.toString());
            if (forwardLookup == null) {
                throw new NamingException("[33] aliasProblem - the alias when dereferenced would not name a known object the aliasedObjectName must be set to a valid existing entry.");
            }
            if (this.aliasIdx.reverseLookup(forwardLookup) != null) {
                throw new NamingException("[36] aliasDereferencingProblem - the alias points to another alias.  Alias chaining is not supported by this backend.");
            }
            this.aliasIdx.add(str, bigInteger);
            Name suffix = name.getSuffix(1);
            BigInteger entryId = getEntryId(suffix.toString());
            if (!NamespaceTools.isSibling(ldapName, name)) {
                this.oneAliasIdx.add(entryId, forwardLookup);
            }
            while (!suffix.equals(this.upSuffix) && entryId != null) {
                if (!NamespaceTools.isDescendant(suffix, ldapName)) {
                    this.subAliasIdx.add(entryId, forwardLookup);
                }
                suffix = suffix.getSuffix(1);
                entryId = getEntryId(suffix.toString());
            }
        }
    }

    @Override // org.apache.ldap.server.db.Database
    public void add(String str, Name name, Attributes attributes) throws NamingException {
        BigInteger entryId;
        BigInteger nextId = this.master.getNextId();
        if (name.equals(this.normSuffix)) {
            entryId = BigInteger.ZERO;
        } else {
            entryId = getEntryId(name.getSuffix(1).toString());
        }
        if (entryId == null) {
            throw new LdapNameNotFoundException(new StringBuffer("Id for parent '").append(name.getSuffix(1).toString()).append("' not found!").toString());
        }
        if (attributes.get(JavaLdapSupport.OBJECTCLASS_ATTR) == null) {
            throw new LdapSchemaViolationException(new StringBuffer("Entry ").append(str).append(" contains no objectClass attribute: ").append(attributes).toString(), ResultCodeEnum.OBJECTCLASSVIOLATION);
        }
        if (attributes.get(JavaLdapSupport.OBJECTCLASS_ATTR).contains(Database.ALIAS_OBJECT)) {
            addAliasIndices(nextId, name, (String) attributes.get(Database.ALIAS_ATTRIBUTE).get());
        }
        this.ndnIdx.add(name.toString(), nextId);
        this.updnIdx.add(str, nextId);
        this.hierarchyIdx.add(entryId, nextId);
        NamingEnumeration iDs = attributes.getIDs();
        while (iDs.hasMore()) {
            String str2 = (String) iDs.next();
            if (hasUserIndexOn(str2)) {
                Index userIndex = getUserIndex(str2);
                NamingEnumeration all = attributes.get(str2).getAll();
                while (all.hasMore()) {
                    userIndex.add(all.next(), nextId);
                }
                this.existanceIdx.add(str2.toLowerCase(), nextId);
            }
        }
        this.master.put(attributes, nextId);
    }

    @Override // org.apache.ldap.server.db.Database
    public Attributes lookup(BigInteger bigInteger) throws NamingException {
        return this.master.get(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public void delete(BigInteger bigInteger) throws NamingException {
        Attributes lookup = lookup(bigInteger);
        BigInteger parentId = getParentId(bigInteger);
        NamingEnumeration iDs = lookup.getIDs();
        if (lookup.get(JavaLdapSupport.OBJECTCLASS_ATTR).contains(Database.ALIAS_OBJECT)) {
            dropAliasIndices(bigInteger);
        }
        this.ndnIdx.drop(bigInteger);
        this.updnIdx.drop(bigInteger);
        this.hierarchyIdx.drop(bigInteger);
        if (!parentId.equals(BigInteger.ZERO)) {
            this.hierarchyIdx.drop(parentId, bigInteger);
        }
        while (iDs.hasMore()) {
            String str = (String) iDs.next();
            if (hasUserIndexOn(str)) {
                Index userIndex = getUserIndex(str);
                NamingEnumeration all = lookup.get(str).getAll();
                while (all.hasMore()) {
                    userIndex.drop(all.next(), bigInteger);
                }
                this.existanceIdx.drop(str.toLowerCase(), bigInteger);
            }
        }
        this.master.delete(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public NamingEnumeration list(BigInteger bigInteger) throws NamingException {
        return this.hierarchyIdx.listIndices(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public int getChildCount(BigInteger bigInteger) throws NamingException {
        return this.hierarchyIdx.count(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Database
    public Name getSuffix() {
        return this.upSuffix;
    }

    @Override // org.apache.ldap.server.db.Database
    public Attributes getSuffixEntry() throws NamingException {
        BigInteger entryId = getEntryId(this.upSuffix.toString());
        if (entryId == null) {
            return null;
        }
        return lookup(entryId);
    }

    @Override // org.apache.ldap.server.db.Database
    public void sync() throws NamingException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.indices.values());
        arrayList.add(this.ndnIdx);
        arrayList.add(this.updnIdx);
        arrayList.add(this.aliasIdx);
        arrayList.add(this.oneAliasIdx);
        arrayList.add(this.subAliasIdx);
        arrayList.add(this.hierarchyIdx);
        arrayList.add(this.existanceIdx);
        Iterator it = arrayList.iterator();
        MultiException multiException = null;
        while (it.hasNext()) {
            try {
                ((Index) it.next()).sync();
            } catch (Throwable th) {
                th.printStackTrace();
                if (multiException == null) {
                    multiException = new MultiException();
                }
                multiException.addThrowable(th);
            }
        }
        try {
            this.master.sync();
            this.recMan.commit();
        } catch (Throwable th2) {
            th2.printStackTrace();
            if (multiException == null) {
                multiException = new MultiException();
            }
            multiException.addThrowable(th2);
        }
        if (multiException == null) {
            return;
        }
        NamingException namingException = new NamingException("Failed to sync all");
        namingException.setRootCause(multiException);
        throw namingException;
    }

    @Override // org.apache.ldap.server.db.Database
    public synchronized void close() throws NamingException {
        if (this.closed) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.indices.values());
        Index index = this.ndnIdx;
        if (index != null) {
            arrayList.add(index);
        }
        Index index2 = this.updnIdx;
        if (index2 != null) {
            arrayList.add(index2);
        }
        Index index3 = this.aliasIdx;
        if (index3 != null) {
            arrayList.add(index3);
        }
        Index index4 = this.oneAliasIdx;
        if (index4 != null) {
            arrayList.add(index4);
        }
        Index index5 = this.subAliasIdx;
        if (index5 != null) {
            arrayList.add(index5);
        }
        Index index6 = this.hierarchyIdx;
        if (index6 != null) {
            arrayList.add(index6);
        }
        Index index7 = this.existanceIdx;
        if (index7 != null) {
            arrayList.add(index7);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Index) it.next()).close();
        }
        this.master.close();
        this.recMan.close();
        this.closed = true;
        if (0 == 0) {
            return;
        }
        NamingException namingException = new NamingException("Failed to close all");
        namingException.setRootCause((Throwable) null);
        throw namingException;
    }

    @Override // org.apache.ldap.server.db.Database
    public boolean isClosed() {
        return this.closed;
    }

    @Override // org.apache.ldap.server.db.Database
    public void setProperty(String str, String str2) throws NamingException {
        this.master.setProperty(str, str2);
    }

    @Override // org.apache.ldap.server.db.Database
    public String getProperty(String str) throws NamingException {
        return this.master.getProperty(str);
    }

    @Override // org.apache.ldap.server.db.Database
    public Attributes getIndices(BigInteger bigInteger) throws NamingException {
        LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
        lockableAttributesImpl.put("_nDn", getEntryDn(bigInteger));
        lockableAttributesImpl.put("_upDn", getEntryUpdn(bigInteger));
        lockableAttributesImpl.put("_parent", getParentId(bigInteger));
        for (Index index : this.indices.values()) {
            IndexEnumeration listReverseIndices = index.listReverseIndices(bigInteger);
            while (listReverseIndices.hasMore()) {
                lockableAttributesImpl.put(index.getAttribute().getName(), ((IndexRecord) listReverseIndices.next()).getIndexKey());
            }
        }
        IndexEnumeration listReverseIndices2 = this.existanceIdx.listReverseIndices(bigInteger);
        StringBuffer stringBuffer = new StringBuffer();
        while (listReverseIndices2.hasMore()) {
            IndexRecord indexRecord = (IndexRecord) listReverseIndices2.next();
            stringBuffer.append("_existance[");
            stringBuffer.append(indexRecord.getIndexKey());
            stringBuffer.append("]");
            lockableAttributesImpl.put(stringBuffer.toString(), indexRecord.getEntryId());
            stringBuffer.setLength(0);
        }
        IndexEnumeration listIndices = this.hierarchyIdx.listIndices(bigInteger);
        while (listIndices.hasMore()) {
            lockableAttributesImpl.put("_child", ((IndexRecord) listIndices.next()).getEntryId());
        }
        return lockableAttributesImpl;
    }

    private void add(BigInteger bigInteger, Attributes attributes, Attribute attribute) throws NamingException {
        if (hasUserIndexOn(attribute.getID())) {
            Index userIndex = getUserIndex(attribute.getID());
            userIndex.add(attribute, bigInteger);
            if (!this.existanceIdx.hasValue(attribute.getID(), bigInteger)) {
                userIndex.add(attribute.getID(), bigInteger);
            }
        }
        attributes.put(attribute);
        if (attribute.getID().equals(Database.ALIAS_ATTRIBUTE)) {
            addAliasIndices(bigInteger, new LdapName((String) this.ndnIdx.reverseLookup(bigInteger)), (String) attribute.get());
        }
    }

    private void remove(BigInteger bigInteger, Attributes attributes, Attribute attribute) throws NamingException {
        if (hasUserIndexOn(attribute.getID())) {
            Index userIndex = getUserIndex(attribute.getID());
            userIndex.drop(attribute, bigInteger);
            if (userIndex.reverseLookup(bigInteger) == null) {
                this.existanceIdx.drop(attribute.getID(), bigInteger);
            }
        }
        if (attribute.size() == 0) {
            attributes.remove(attribute.getID());
        } else {
            Attribute attribute2 = attributes.get(attribute.getID());
            NamingEnumeration all = attribute.getAll();
            while (all.hasMore()) {
                attribute2.remove(all.next());
            }
        }
        if (attribute.getID().equals(Database.ALIAS_ATTRIBUTE)) {
            dropAliasIndices(bigInteger);
        }
    }

    private void replace(BigInteger bigInteger, Attributes attributes, Attribute attribute) throws NamingException {
        if (hasUserIndexOn(attribute.getID())) {
            Index userIndex = getUserIndex(attribute.getID());
            userIndex.drop(bigInteger);
            userIndex.add(attribute, bigInteger);
            if (userIndex.reverseLookup(bigInteger) == null) {
                this.existanceIdx.drop(attribute.getID(), bigInteger);
            }
        }
        if (attribute.getID().equals(Database.ALIAS_ATTRIBUTE)) {
            dropAliasIndices(bigInteger);
        }
        attributes.put(attribute);
        if (attribute.getID().equals(Database.ALIAS_ATTRIBUTE)) {
            addAliasIndices(bigInteger, new LdapName((String) this.ndnIdx.reverseLookup(bigInteger)), (String) attribute.get());
        }
    }

    @Override // org.apache.ldap.server.db.Database
    public void modify(Name name, int i, Attributes attributes) throws NamingException {
        BigInteger entryId = getEntryId(name.toString());
        Attributes attributes2 = this.master.get(entryId);
        if (i == 1) {
            NamingEnumeration iDs = attributes.getIDs();
            while (iDs.hasMore()) {
                add(entryId, attributes2, attributes.get((String) iDs.next()));
            }
        } else if (i == 2) {
            NamingEnumeration iDs2 = attributes.getIDs();
            while (iDs2.hasMore()) {
                replace(entryId, attributes2, attributes.get((String) iDs2.next()));
            }
        } else if (i == 3) {
            NamingEnumeration iDs3 = attributes.getIDs();
            while (iDs3.hasMore()) {
                remove(entryId, attributes2, attributes.get((String) iDs3.next()));
            }
        } else {
            throw new NamingException("Unidentified modification operation");
        }
        this.master.put(attributes2, entryId);
    }

    @Override // org.apache.ldap.server.db.Database
    public void modify(Name name, ModificationItem[] modificationItemArr) throws NamingException {
        BigInteger entryId = getEntryId(name.toString());
        Attributes attributes = this.master.get(entryId);
        for (int i = 0; i < modificationItemArr.length; i++) {
            Attribute attribute = modificationItemArr[i].getAttribute();
            int modificationOp = modificationItemArr[i].getModificationOp();
            if (modificationOp == 1) {
                add(entryId, attributes, attribute);
            } else if (modificationOp == 2) {
                replace(entryId, attributes, attribute);
            } else if (modificationOp == 3) {
                remove(entryId, attributes, attribute);
            } else {
                throw new NamingException("Unidentified modification operation");
            }
        }
        this.master.put(attributes, entryId);
    }

    @Override // org.apache.ldap.server.db.Database
    public void modifyRdn(Name name, String str, boolean z) throws NamingException {
        String rdnAttribute = NamespaceTools.getRdnAttribute(str);
        String rdnValue = NamespaceTools.getRdnValue(str);
        BigInteger entryId = getEntryId(name.toString());
        Attributes lookup = lookup(entryId);
        LdapName ldapName = new LdapName(getEntryUpdn(entryId));
        lookup.put(rdnAttribute, rdnValue);
        if (hasUserIndexOn(rdnAttribute)) {
            getUserIndex(rdnAttribute).add(rdnValue, entryId);
            if (!this.existanceIdx.hasValue(rdnAttribute, entryId)) {
                this.existanceIdx.add(rdnAttribute, entryId);
            }
        }
        if (z) {
            String str2 = ldapName.get(ldapName.size() - 1);
            String rdnAttribute2 = NamespaceTools.getRdnAttribute(str2);
            String rdnValue2 = NamespaceTools.getRdnValue(str2);
            lookup.get(rdnAttribute2).remove(rdnValue2);
            if (hasUserIndexOn(rdnAttribute2)) {
                Index userIndex = getUserIndex(rdnAttribute2);
                userIndex.drop(rdnValue2, entryId);
                if (userIndex.reverseLookup(entryId) == null) {
                    this.existanceIdx.drop(rdnAttribute2, entryId);
                }
            }
        }
        Name name2 = (Name) ldapName.clone();
        name2.remove(name2.size() - 1);
        name2.add(name2.size(), str);
        modifyDn(entryId, name2, false);
    }

    private void modifyDn(BigInteger bigInteger, Name name, boolean z) throws NamingException {
        String str;
        this.ndnIdx.drop(bigInteger);
        Index index = this.ndnIdx;
        index.add(index.getNormalized(name.toString()), bigInteger);
        this.updnIdx.drop(bigInteger);
        this.updnIdx.add(name.toString(), bigInteger);
        if (z && (str = (String) this.aliasIdx.reverseLookup(bigInteger)) != null) {
            addAliasIndices(bigInteger, new LdapName(getEntryDn(bigInteger)), str);
        }
        NamingEnumeration list = list(bigInteger);
        while (list.hasMore()) {
            BigInteger entryId = ((IndexRecord) list.next()).getEntryId();
            Name name2 = (Name) name.clone();
            name2.add(name2.size(), LdapName.getRdn(new LdapName(getEntryUpdn(entryId))));
            modifyDn(entryId, name2, z);
        }
    }

    @Override // org.apache.ldap.server.db.Database
    public void move(Name name, Name name2, String str, boolean z) throws NamingException {
        modifyRdn(name, str, z);
        move(name, name2);
    }

    @Override // org.apache.ldap.server.db.Database
    public void move(Name name, Name name2) throws NamingException {
        BigInteger entryId = getEntryId(name.toString());
        BigInteger entryId2 = getEntryId(name2.toString());
        BigInteger parentId = getParentId(entryId);
        dropMovedAliasIndices(name);
        this.hierarchyIdx.drop(parentId, entryId);
        this.hierarchyIdx.add(entryId2, entryId);
        LdapName ldapName = new LdapName(getEntryUpdn(entryId));
        String str = ldapName.get(ldapName.size() - 1);
        LdapName ldapName2 = new LdapName(getEntryUpdn(entryId2));
        ldapName2.add(ldapName2.size(), str);
        modifyDn(entryId, ldapName2, true);
    }

    private void dropMovedAliasIndices(final Name name) throws NamingException {
        IndexAssertion indexAssertion = new IndexAssertion() { // from class: org.apache.ldap.server.db.jdbm.JdbmDatabase.1
            @Override // org.apache.ldap.server.db.IndexAssertion
            public boolean assertCandidate(IndexRecord indexRecord) throws NamingException {
                return JdbmDatabase.this.getEntryDn(indexRecord.getEntryId()).endsWith(name.toString());
            }
        };
        BigInteger entryId = getEntryId(name.toString());
        if (this.aliasIdx.reverseLookup(entryId) != null) {
            dropAliasIndices(entryId, name);
        }
        IndexAssertionEnumeration indexAssertionEnumeration = new IndexAssertionEnumeration(this.aliasIdx.listIndices((Object) name.toString(), true), indexAssertion);
        while (indexAssertionEnumeration.hasMore()) {
            dropAliasIndices(((IndexRecord) indexAssertionEnumeration.next()).getEntryId(), name);
        }
    }

    private void dropAliasIndices(BigInteger bigInteger, Name name) throws NamingException {
        BigInteger entryId = getEntryId((String) this.aliasIdx.reverseLookup(bigInteger));
        String entryDn = getEntryDn(bigInteger);
        Name suffix = name.getSuffix(1);
        BigInteger entryId2 = getEntryId(suffix.toString());
        if (entryDn.equals(name.toString())) {
            this.oneAliasIdx.drop(entryId2, entryId);
        }
        this.subAliasIdx.drop(entryId2, entryId);
        while (!suffix.equals(this.upSuffix)) {
            suffix = suffix.getSuffix(1);
            this.subAliasIdx.drop(getEntryId(suffix.toString()), entryId);
        }
    }
}
