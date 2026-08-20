package org.apache.ldap.server.db.jdbm;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import jdbm.RecordManager;
import jdbm.helper.MRU;
import jdbm.recman.BaseRecordManager;
import jdbm.recman.CacheRecordManager;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.util.LRUMap;
import org.apache.ldap.server.db.Index;
import org.apache.ldap.server.db.IndexComparator;
import org.apache.ldap.server.db.IndexEnumeration;
import org.apache.ldap.server.schema.SerializableComparator;
import org.apache.regexp.RE;
/* loaded from: classes3.dex */
public class JdbmIndex implements Index {
    public static final String FORWARD_BTREE = "_forward";
    public static final String REVERSE_BTREE = "_reverse";
    private AttributeType attribute;
    private LRUMap keyCache;
    private RecordManager recMan;
    private JdbmTable forward = null;
    private JdbmTable reverse = null;

    public JdbmIndex(AttributeType attributeType, RecordManager recordManager) throws NamingException {
        this.recMan = null;
        this.keyCache = null;
        this.attribute = attributeType;
        this.keyCache = new LRUMap(1000);
        this.recMan = recordManager;
        initTables();
    }

    public JdbmIndex(AttributeType attributeType, String str) throws NamingException {
        this.recMan = null;
        this.keyCache = null;
        File file = new File(new StringBuffer(String.valueOf(str)).append(File.separator).append(attributeType.getName()).toString());
        this.attribute = attributeType;
        this.keyCache = new LRUMap(1000);
        try {
            BaseRecordManager baseRecordManager = new BaseRecordManager(file.getAbsolutePath());
            baseRecordManager.disableTransactions();
            this.recMan = new CacheRecordManager(baseRecordManager, new MRU(1000));
            initTables();
        } catch (IOException e2) {
            NamingException namingException = new NamingException("Could not initialize the record manager");
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    private void initTables() throws NamingException {
        SerializableComparator serializableComparator = new SerializableComparator(this.attribute.getEquality().getOid());
        this.forward = new JdbmTable(new StringBuffer(String.valueOf(this.attribute.getName())).append(FORWARD_BTREE).toString(), true, this.recMan, new IndexComparator(serializableComparator, true));
        this.reverse = new JdbmTable(new StringBuffer(String.valueOf(this.attribute.getName())).append(REVERSE_BTREE).toString(), !this.attribute.isSingleValue(), this.recMan, new IndexComparator(serializableComparator, false));
    }

    @Override // org.apache.ldap.server.db.Index
    public AttributeType getAttribute() {
        return this.attribute;
    }

    @Override // org.apache.ldap.server.db.Index
    public int count() throws NamingException {
        return this.forward.count();
    }

    @Override // org.apache.ldap.server.db.Index
    public int count(Object obj) throws NamingException {
        return this.forward.count(getNormalized(obj));
    }

    @Override // org.apache.ldap.server.db.Index
    public int count(Object obj, boolean z) throws NamingException {
        return this.forward.count(getNormalized(obj), z);
    }

    @Override // org.apache.ldap.server.db.Index
    public BigInteger forwardLookup(Object obj) throws NamingException {
        return (BigInteger) this.forward.get(getNormalized(obj));
    }

    @Override // org.apache.ldap.server.db.Index
    public Object reverseLookup(BigInteger bigInteger) throws NamingException {
        return this.reverse.get(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Index
    public synchronized void add(Object obj, BigInteger bigInteger) throws NamingException {
        this.forward.put(getNormalized(obj), bigInteger);
        this.reverse.put(bigInteger, getNormalized(obj));
    }

    @Override // org.apache.ldap.server.db.Index
    public synchronized void add(Attribute attribute, BigInteger bigInteger) throws NamingException {
        this.reverse.put((Object) bigInteger, attribute.getAll());
        NamingEnumeration all = attribute.getAll();
        while (all.hasMore()) {
            this.forward.put(all.next(), bigInteger);
        }
    }

    @Override // org.apache.ldap.server.db.Index
    public synchronized void add(Attributes attributes, BigInteger bigInteger) throws NamingException {
        add(attributes.get(this.attribute.getName()), bigInteger);
    }

    @Override // org.apache.ldap.server.db.Index
    public synchronized void drop(Object obj, BigInteger bigInteger) throws NamingException {
        this.forward.remove(getNormalized(obj), bigInteger);
        this.reverse.remove(bigInteger, getNormalized(obj));
    }

    @Override // org.apache.ldap.server.db.Index
    public void drop(BigInteger bigInteger) throws NamingException {
        NamingEnumeration listValues = this.reverse.listValues(bigInteger);
        while (listValues.hasMore()) {
            this.forward.remove(listValues.next(), bigInteger);
        }
        this.reverse.remove(bigInteger);
    }

    @Override // org.apache.ldap.server.db.Index
    public void drop(Attribute attribute, BigInteger bigInteger) throws NamingException {
        NamingEnumeration all = attribute.getAll();
        if (!all.hasMore()) {
            drop(bigInteger);
            return;
        }
        this.reverse.remove((Object) bigInteger, all);
        NamingEnumeration all2 = attribute.getAll();
        while (all2.hasMore()) {
            this.forward.remove(all2.next(), bigInteger);
        }
    }

    @Override // org.apache.ldap.server.db.Index
    public void drop(Attributes attributes, BigInteger bigInteger) throws NamingException {
        drop(attributes.get(this.attribute.getName()), bigInteger);
    }

    @Override // org.apache.ldap.server.db.Index
    public IndexEnumeration listReverseIndices(BigInteger bigInteger) throws NamingException {
        return new IndexEnumeration(this.reverse.listTuples(bigInteger), true);
    }

    @Override // org.apache.ldap.server.db.Index
    public IndexEnumeration listIndices() throws NamingException {
        return new IndexEnumeration(this.forward.listTuples());
    }

    @Override // org.apache.ldap.server.db.Index
    public IndexEnumeration listIndices(Object obj) throws NamingException {
        return new IndexEnumeration(this.forward.listTuples(getNormalized(obj)));
    }

    @Override // org.apache.ldap.server.db.Index
    public IndexEnumeration listIndices(Object obj, boolean z) throws NamingException {
        return new IndexEnumeration(this.forward.listTuples(getNormalized(obj), z));
    }

    @Override // org.apache.ldap.server.db.Index
    public IndexEnumeration listIndices(RE re) throws NamingException {
        return new IndexEnumeration(this.forward.listTuples(), false, re);
    }

    @Override // org.apache.ldap.server.db.Index
    public IndexEnumeration listIndices(RE re, String str) throws NamingException {
        return new IndexEnumeration(this.forward.listTuples(getNormalized(str), true), false, re);
    }

    @Override // org.apache.ldap.server.db.Index
    public boolean hasValue(Object obj, BigInteger bigInteger) throws NamingException {
        return this.forward.has(getNormalized(obj), bigInteger);
    }

    @Override // org.apache.ldap.server.db.Index
    public boolean hasValue(Object obj, BigInteger bigInteger, boolean z) throws NamingException {
        return this.forward.has(getNormalized(obj), bigInteger, z);
    }

    @Override // org.apache.ldap.server.db.Index
    public boolean hasValue(RE re, BigInteger bigInteger) throws NamingException {
        IndexEnumeration indexEnumeration = new IndexEnumeration(this.reverse.listTuples(bigInteger), true, re);
        boolean hasMore = indexEnumeration.hasMore();
        indexEnumeration.close();
        return hasMore;
    }

    @Override // org.apache.ldap.server.db.Index
    public synchronized void close() throws NamingException {
        try {
            this.forward.close();
            this.reverse.close();
            this.recMan.commit();
            this.recMan.close();
        } catch (IOException e2) {
            NamingException namingException = new NamingException(new StringBuffer("Exception while closing backend index file for attribute ").append(this.attribute.getName()).toString());
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.db.Index
    public synchronized void sync() throws NamingException {
        try {
            this.recMan.commit();
        } catch (IOException e2) {
            NamingException namingException = new NamingException(new StringBuffer("Exception while syncing backend index file for attribute ").append(this.attribute.getName()).toString());
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.db.Index
    public Object getNormalized(Object obj) throws NamingException {
        Object obj2 = this.keyCache.get(obj);
        if (obj2 == null) {
            Object normalize = this.attribute.getEquality().getNormalizer().normalize(obj);
            this.keyCache.put(obj, normalize);
            this.keyCache.put(normalize, normalize);
            return normalize;
        }
        return obj2;
    }
}
