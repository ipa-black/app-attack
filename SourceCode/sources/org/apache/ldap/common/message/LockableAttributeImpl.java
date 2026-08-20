package org.apache.ldap.common.message;

import java.util.ArrayList;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.OperationNotSupportedException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import org.apache.ldap.common.AbstractLockable;
import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public class LockableAttributeImpl extends AbstractLockable implements LockableAttribute {
    private final String id;
    private final ArrayList list;

    public boolean isOrdered() {
        return true;
    }

    public LockableAttributeImpl(Lockable lockable, String str) {
        super(lockable, false);
        this.id = str;
        this.list = new ArrayList();
    }

    public LockableAttributeImpl(String str, Object obj) {
        super(false);
        this.id = str;
        ArrayList arrayList = new ArrayList();
        this.list = arrayList;
        arrayList.add(obj);
    }

    public LockableAttributeImpl(String str, byte[] bArr) {
        super(false);
        this.id = str;
        ArrayList arrayList = new ArrayList();
        this.list = arrayList;
        arrayList.add(bArr);
    }

    public LockableAttributeImpl(String str) {
        super(false);
        this.id = str;
        this.list = new ArrayList();
    }

    private LockableAttributeImpl(Lockable lockable, String str, ArrayList arrayList) {
        super(lockable, false);
        this.id = str;
        this.list = arrayList;
    }

    private LockableAttributeImpl(String str, ArrayList arrayList) {
        super(false);
        this.id = str;
        this.list = arrayList;
    }

    public NamingEnumeration getAll() {
        return new IteratorNamingEnumeration(this.list.iterator());
    }

    public Object get() {
        if (this.list.isEmpty()) {
            return null;
        }
        return this.list.get(0);
    }

    public int size() {
        return this.list.size();
    }

    public String getID() {
        return this.id;
    }

    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    public boolean add(Object obj) {
        super.lockCheck("Attempt to add value to locked Attribute!");
        return this.list.add(obj);
    }

    public boolean remove(Object obj) {
        super.lockCheck("Attempt to remove value from locked Attribute!");
        return this.list.remove(obj);
    }

    public void clear() {
        super.lockCheck("Attempt to clear values from locked Attribute!");
        this.list.clear();
    }

    public DirContext getAttributeSyntaxDefinition() throws NamingException {
        throw new OperationNotSupportedException("Extending subclasses may override this if they like!");
    }

    public DirContext getAttributeDefinition() throws NamingException {
        throw new OperationNotSupportedException("Extending subclasses may override this if they like!");
    }

    public Object clone() {
        ArrayList arrayList = (ArrayList) this.list.clone();
        if (getParent() != null) {
            return new LockableAttributeImpl(getParent(), this.id, arrayList);
        }
        return new LockableAttributeImpl(this.id, arrayList);
    }

    public Object get(int i) {
        return this.list.get(i);
    }

    public Object remove(int i) {
        super.lockCheck("Attempt to remove value from locked Attribute!");
        return this.list.remove(i);
    }

    public void add(int i, Object obj) {
        super.lockCheck("Attempt to add value to locked Attribute!");
        this.list.add(i, obj);
    }

    public Object set(int i, Object obj) {
        super.lockCheck("Attempt to set value in locked Attribute!");
        return this.list.set(i, obj);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            if (this.id.equals(attribute.getID()) && attribute.size() == this.list.size()) {
                for (int i = 0; i < attribute.size(); i++) {
                    try {
                        if (!this.list.contains(attribute.get(i))) {
                            return false;
                        }
                    } catch (NamingException e2) {
                        e2.printStackTrace();
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }
}
