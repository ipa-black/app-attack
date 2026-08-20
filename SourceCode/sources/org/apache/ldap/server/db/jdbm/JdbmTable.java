package org.apache.ldap.server.db.jdbm;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.SortedSet;
import java.util.TreeSet;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import jdbm.RecordManager;
import jdbm.btree.BTree;
import jdbm.helper.Tuple;
import jdbm.helper.TupleBrowser;
import org.apache.ldap.common.util.EmptyEnumeration;
import org.apache.ldap.common.util.SingletonEnumeration;
import org.apache.ldap.server.db.DupsEnumeration;
import org.apache.ldap.server.db.KeyOnlyComparator;
import org.apache.ldap.server.db.NoDupsEnumeration;
import org.apache.ldap.server.db.Table;
import org.apache.ldap.server.db.TupleComparator;
import org.apache.ldap.server.db.TupleEnumeration;
import org.apache.ldap.server.db.TupleRenderer;
import org.apache.ldap.server.schema.SerializableComparator;
/* loaded from: classes3.dex */
public class JdbmTable implements Table {
    private static final String SZSUFFIX = "_btree_sz";
    private final boolean allowsDuplicates;
    private BTree bt;
    private final TupleComparator comparator;
    private int count;
    private final String name;
    private final RecordManager recMan;
    private TupleRenderer renderer;

    public JdbmTable(String str, boolean z, RecordManager recordManager, TupleComparator tupleComparator) throws NamingException {
        this.count = 0;
        this.name = str;
        this.recMan = recordManager;
        this.comparator = tupleComparator;
        this.allowsDuplicates = z;
        try {
            long namedObject = recordManager.getNamedObject(str);
            try {
                if (namedObject != 0) {
                    this.bt = BTree.load(recordManager, namedObject);
                    this.count = ((Integer) recordManager.fetch(recordManager.getNamedObject(new StringBuffer(String.valueOf(str)).append(SZSUFFIX).toString()))).intValue();
                    return;
                }
                BTree createInstance = BTree.createInstance(recordManager, tupleComparator.getKeyComparator());
                this.bt = createInstance;
                recordManager.setNamedObject(str, createInstance.getRecid());
                recordManager.setNamedObject(new StringBuffer(String.valueOf(str)).append(SZSUFFIX).toString(), recordManager.insert(new Integer(0)));
            } catch (IOException e2) {
                NamingException namingException = new NamingException();
                namingException.setRootCause(e2);
                throw namingException;
            }
        } catch (IOException e3) {
            NamingException namingException2 = new NamingException();
            namingException2.setRootCause(e3);
            throw namingException2;
        }
    }

    public JdbmTable(String str, RecordManager recordManager, SerializableComparator serializableComparator) throws NamingException {
        this(str, false, recordManager, new KeyOnlyComparator(serializableComparator));
    }

    @Override // org.apache.ldap.server.db.Table
    public TupleComparator getComparator() {
        return this.comparator;
    }

    @Override // org.apache.ldap.server.db.Table
    public boolean isDupsEnabled() {
        return this.allowsDuplicates;
    }

    @Override // org.apache.ldap.server.db.Table
    public String getName() {
        return this.name;
    }

    @Override // org.apache.ldap.server.db.Table
    public TupleRenderer getRenderer() {
        return this.renderer;
    }

    @Override // org.apache.ldap.server.db.Table
    public void setRenderer(TupleRenderer tupleRenderer) {
        this.renderer = tupleRenderer;
    }

    @Override // org.apache.ldap.server.db.Table
    public boolean isSortedDupsEnabled() {
        return this.allowsDuplicates;
    }

    @Override // org.apache.ldap.server.db.Table
    public int count(Object obj, boolean z) throws NamingException {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.ldap.server.db.Table
    public int count(Object obj) throws NamingException {
        if (!this.allowsDuplicates) {
            return getRaw(obj) == null ? 0 : 1;
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet != null) {
            return treeSet.size();
        }
        return 0;
    }

    @Override // org.apache.ldap.server.db.Table
    public int count() throws NamingException {
        return this.count;
    }

    @Override // org.apache.ldap.server.db.Table
    public Object get(Object obj) throws NamingException {
        if (this.allowsDuplicates) {
            TreeSet treeSet = (TreeSet) getRaw(obj);
            if (treeSet == null || treeSet.size() == 0) {
                return null;
            }
            return treeSet.first();
        }
        return getRaw(obj);
    }

    @Override // org.apache.ldap.server.db.Table
    public boolean has(Object obj, Object obj2, boolean z) throws NamingException {
        SortedSet headSet;
        if (!this.allowsDuplicates) {
            Object raw = getRaw(obj);
            if (raw == null) {
                return false;
            }
            if (obj2.equals(raw)) {
                return true;
            }
            if (this.comparator.compareValue(raw, obj2) < 1 || !z) {
                return this.comparator.compareValue(raw, obj2) <= 1 && !z;
            }
            return true;
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet == null || treeSet.size() == 0) {
            return false;
        }
        if (z) {
            headSet = treeSet.tailSet(obj2);
        } else {
            headSet = treeSet.headSet(obj2);
        }
        return headSet.size() > 0 || treeSet.contains(obj2);
    }

    @Override // org.apache.ldap.server.db.Table
    public boolean has(Object obj, boolean z) throws NamingException {
        try {
            Tuple findGreaterOrEqual = this.bt.findGreaterOrEqual(obj);
            if (findGreaterOrEqual == null || this.comparator.compareKey(findGreaterOrEqual.getKey(), obj) != 0) {
                if (z) {
                    return findGreaterOrEqual != null;
                }
                if (findGreaterOrEqual == null) {
                    Tuple tuple = new Tuple();
                    return this.bt.browse().getNext(tuple) && this.comparator.compareKey(tuple.getKey(), obj) <= 0;
                }
                TupleBrowser browse = this.bt.browse(findGreaterOrEqual.getKey());
                if (this.comparator.compareKey(findGreaterOrEqual.getKey(), obj) <= 0) {
                    return true;
                }
                browse.getNext(findGreaterOrEqual);
                while (browse.getPrevious(findGreaterOrEqual)) {
                    if (this.comparator.compareKey(findGreaterOrEqual.getKey(), obj) <= 0) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        } catch (IOException e2) {
            NamingException namingException = new NamingException();
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.db.Table
    public boolean has(Object obj, Object obj2) throws NamingException {
        if (this.allowsDuplicates) {
            TreeSet treeSet = (TreeSet) getRaw(obj);
            if (treeSet == null) {
                return false;
            }
            return treeSet.contains(obj2);
        }
        Object raw = getRaw(obj);
        if (raw == null) {
            return false;
        }
        return raw.equals(obj2);
    }

    @Override // org.apache.ldap.server.db.Table
    public boolean has(Object obj) throws NamingException {
        return getRaw(obj) != null;
    }

    @Override // org.apache.ldap.server.db.Table
    public Object put(Object obj, Object obj2) throws NamingException {
        if (this.allowsDuplicates) {
            TreeSet treeSet = (TreeSet) getRaw(obj);
            if (treeSet == null) {
                treeSet = new TreeSet(this.comparator.getValueComparator());
            } else if (treeSet.contains(obj2)) {
                return obj2;
            }
            treeSet.add(obj2);
            putRaw(obj, treeSet, true);
            this.count++;
            return null;
        }
        Object putRaw = putRaw(obj, obj2, true);
        if (putRaw == null) {
            this.count++;
        }
        return putRaw;
    }

    @Override // org.apache.ldap.server.db.Table
    public Object put(Object obj, NamingEnumeration namingEnumeration) throws NamingException {
        if (!this.allowsDuplicates) {
            if (namingEnumeration.hasMore()) {
                Object next = namingEnumeration.next();
                if (namingEnumeration.hasMore()) {
                    throw new UnsupportedOperationException(new StringBuffer("Attempting to put duplicate keys into table ").append(this.name).append(" which does not support duplicates").toString());
                }
                return put(obj, next);
            }
            return null;
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet == null) {
            treeSet = new TreeSet(this.comparator.getValueComparator());
        }
        while (namingEnumeration.hasMore()) {
            Object next2 = namingEnumeration.next();
            if (!treeSet.contains(next2)) {
                treeSet.add(next2);
                this.count++;
            }
        }
        return putRaw(obj, treeSet, true);
    }

    @Override // org.apache.ldap.server.db.Table
    public Object remove(Object obj, Object obj2) throws NamingException {
        if (this.allowsDuplicates) {
            TreeSet treeSet = (TreeSet) getRaw(obj);
            if (treeSet != null && treeSet.remove(obj2)) {
                if (treeSet.isEmpty()) {
                    removeRaw(obj);
                } else {
                    putRaw(obj, treeSet, true);
                }
                this.count--;
                return obj2;
            }
            return null;
        } else if (getRaw(obj).equals(obj2)) {
            return removeRaw(obj);
        } else {
            return null;
        }
    }

    @Override // org.apache.ldap.server.db.Table
    public Object remove(Object obj, NamingEnumeration namingEnumeration) throws NamingException {
        if (!this.allowsDuplicates) {
            if (namingEnumeration.hasMore()) {
                Object next = namingEnumeration.next();
                if (namingEnumeration.hasMore()) {
                    throw new UnsupportedOperationException(new StringBuffer("Attempting to put duplicate keys into table ").append(this.name).append(" which does not support duplicates").toString());
                }
                return remove(obj, next);
            }
            return null;
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet == null) {
            return null;
        }
        while (namingEnumeration.hasMore()) {
            Object next2 = namingEnumeration.next();
            if (!treeSet.contains(next2)) {
                treeSet.remove(next2);
                this.count--;
            }
        }
        return putRaw(obj, treeSet, true);
    }

    @Override // org.apache.ldap.server.db.Table
    public Object remove(Object obj) throws NamingException {
        Object removeRaw = removeRaw(obj);
        if (removeRaw == null) {
            return null;
        }
        if (this.allowsDuplicates) {
            TreeSet treeSet = (TreeSet) removeRaw;
            this.count -= treeSet.size();
            return treeSet.first();
        }
        this.count--;
        return removeRaw;
    }

    @Override // org.apache.ldap.server.db.Table
    public NamingEnumeration listValues(Object obj) throws NamingException {
        if (!this.allowsDuplicates) {
            Object obj2 = get(obj);
            if (obj2 == null) {
                return new EmptyEnumeration();
            }
            return new SingletonEnumeration(obj2);
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet == null) {
            return new EmptyEnumeration();
        }
        final Iterator it = treeSet.iterator();
        return new NamingEnumeration() { // from class: org.apache.ldap.server.db.jdbm.JdbmTable.1
            public void close() {
            }

            public Object nextElement() {
                return it.next();
            }

            public Object next() {
                return it.next();
            }

            public boolean hasMore() {
                return it.hasNext();
            }

            public boolean hasMoreElements() {
                return it.hasNext();
            }
        };
    }

    @Override // org.apache.ldap.server.db.Table
    public NamingEnumeration listTuples() throws NamingException {
        try {
            NoDupsEnumeration noDupsEnumeration = new NoDupsEnumeration(new JdbmTupleBrowser(this.bt.browse()), true);
            return this.allowsDuplicates ? new DupsEnumeration(noDupsEnumeration) : noDupsEnumeration;
        } catch (IOException e2) {
            NamingException namingException = new NamingException();
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.db.Table
    public NamingEnumeration listTuples(Object obj) throws NamingException {
        if (!this.allowsDuplicates) {
            if (getRaw(obj) == null) {
                return new EmptyEnumeration();
            }
            return new SingletonEnumeration(new org.apache.ldap.server.db.Tuple(obj, getRaw(obj)));
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet == null) {
            return new EmptyEnumeration();
        }
        return new TupleEnumeration(obj, treeSet.iterator());
    }

    @Override // org.apache.ldap.server.db.Table
    public NamingEnumeration listTuples(Object obj, boolean z) throws NamingException {
        NoDupsEnumeration noDupsEnumeration;
        try {
            if (z) {
                noDupsEnumeration = new NoDupsEnumeration(new JdbmTupleBrowser(this.bt.browse(obj)), z);
            } else {
                Tuple tuple = new Tuple();
                TupleBrowser browse = this.bt.browse(obj);
                if (browse.getNext(tuple)) {
                    if (this.comparator.compareKey(obj, tuple.getKey()) != 0) {
                        browse.getPrevious(tuple);
                    }
                }
                noDupsEnumeration = new NoDupsEnumeration(new JdbmTupleBrowser(browse), z);
            }
            return this.allowsDuplicates ? new DupsEnumeration(noDupsEnumeration) : noDupsEnumeration;
        } catch (IOException e2) {
            NamingException namingException = new NamingException(new StringBuffer("Failed to get TupleBrowser on table ").append(this.name).append(" using key ").append(renderKey(obj)).toString());
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.db.Table
    public NamingEnumeration listTuples(Object obj, Object obj2, boolean z) throws NamingException {
        if (!this.allowsDuplicates) {
            Object raw = getRaw(obj);
            if (raw == null) {
                return new EmptyEnumeration();
            }
            if (obj2.equals(raw)) {
                return new SingletonEnumeration(new org.apache.ldap.server.db.Tuple(obj, obj2));
            }
            if (this.comparator.compareValue(obj2, raw) >= 1 && z) {
                return new SingletonEnumeration(new org.apache.ldap.server.db.Tuple(obj, obj2));
            }
            if (this.comparator.compareValue(obj2, raw) <= 1 && !z) {
                return new SingletonEnumeration(new org.apache.ldap.server.db.Tuple(obj, obj2));
            }
            return new EmptyEnumeration();
        }
        TreeSet treeSet = (TreeSet) getRaw(obj);
        if (treeSet == null) {
            return new EmptyEnumeration();
        }
        if (z) {
            return new TupleEnumeration(obj, treeSet.tailSet(obj2).iterator());
        }
        SortedSet headSet = treeSet.headSet(obj2);
        ArrayList arrayList = new ArrayList(treeSet.size() + 1);
        arrayList.addAll(headSet);
        if (treeSet.contains(obj2)) {
            arrayList.add(obj2);
        }
        Collections.reverse(arrayList);
        return new TupleEnumeration(obj, arrayList.iterator());
    }

    @Override // org.apache.ldap.server.db.Table
    public synchronized void close() throws NamingException {
        sync();
    }

    public void sync() throws NamingException {
        try {
            long namedObject = this.recMan.getNamedObject(new StringBuffer(String.valueOf(this.name)).append(SZSUFFIX).toString());
            if (0 == namedObject) {
                this.recMan.insert(new Integer(this.count));
            } else {
                this.recMan.update(namedObject, new Integer(this.count));
            }
        } catch (IOException e2) {
            NamingException namingException = new NamingException();
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    private String renderKey(Object obj) {
        StringBuffer stringBuffer = new StringBuffer("'");
        TupleRenderer tupleRenderer = this.renderer;
        if (tupleRenderer == null) {
            stringBuffer.append(obj.toString());
        } else {
            stringBuffer.append(tupleRenderer.getKeyString(obj));
        }
        stringBuffer.append("'");
        return stringBuffer.toString();
    }

    private Object getRaw(Object obj) throws NamingException {
        if (obj == null) {
            return null;
        }
        try {
            if (!this.allowsDuplicates) {
                return this.bt.find(obj);
            }
            return this.bt.find(obj);
        } catch (IOException e2) {
            NamingException namingException = new NamingException();
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    private Object putRaw(Object obj, Object obj2, boolean z) throws NamingException {
        try {
            return this.bt.insert(obj, obj2, z);
        } catch (IOException e2) {
            NamingException namingException = new NamingException();
            namingException.setRootCause(e2);
            throw namingException;
        }
    }

    private Object removeRaw(Object obj) throws NamingException {
        try {
            return this.bt.remove(obj);
        } catch (IOException e2) {
            NamingException namingException = new NamingException();
            namingException.setRootCause(e2);
            throw namingException;
        }
    }
}
