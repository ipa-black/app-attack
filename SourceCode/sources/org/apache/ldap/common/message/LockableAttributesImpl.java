package org.apache.ldap.common.message;

import java.util.HashMap;
import java.util.Map;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import org.apache.ldap.common.AbstractLockable;
import org.apache.ldap.common.Lockable;
import org.apache.ldap.common.util.ExceptionUtils;
/* loaded from: classes3.dex */
public class LockableAttributesImpl extends AbstractLockable implements LockableAttributes {
    private Map keyMap;
    private final Map map;

    public boolean isCaseIgnored() {
        return true;
    }

    public LockableAttributesImpl() {
        super(false);
        this.map = new HashMap();
        this.keyMap = new HashMap();
    }

    public LockableAttributesImpl(Lockable lockable) {
        super(lockable, false);
        this.map = new HashMap();
        this.keyMap = new HashMap();
    }

    private LockableAttributesImpl(Lockable lockable, Map map, Map map2) {
        super(lockable, false);
        this.map = new HashMap();
        HashMap hashMap = new HashMap();
        this.keyMap = hashMap;
        if (map2 != null) {
            hashMap.putAll(map2);
        }
        for (Attribute attribute : map.values()) {
            this.map.put(attribute.getID(), attribute.clone());
        }
    }

    public int size() {
        return this.map.size();
    }

    public Attribute get(String str) {
        String userProvidedId = getUserProvidedId(str);
        if (userProvidedId == null) {
            return null;
        }
        return (Attribute) this.map.get(userProvidedId);
    }

    public NamingEnumeration getAll() {
        return new IteratorNamingEnumeration(this.map.values().iterator());
    }

    public NamingEnumeration getIDs() {
        return new ArrayNamingEnumeration(this.map.keySet().toArray());
    }

    public Attribute put(String str, Object obj) {
        super.lockCheck("Attempt to add value to locked Attributes");
        Attribute attribute = get(str);
        if (attribute == null) {
            attribute = new LockableAttributeImpl(this, str);
            setUserProvidedId(str);
        }
        attribute.add(obj);
        this.map.put(str, attribute);
        return attribute;
    }

    public Attribute put(Attribute attribute) {
        super.lockCheck("Attempt to Attribute to locked Attributes");
        Attribute attribute2 = get(attribute.getID());
        if (attribute2 != null) {
            this.map.remove(attribute2.getID());
            Map map = this.keyMap;
            if (map != null) {
                map.remove(attribute2.getID().toLowerCase());
            }
        }
        this.map.put(attribute.getID(), attribute);
        setUserProvidedId(attribute.getID());
        return attribute2;
    }

    public Attribute remove(String str) {
        super.lockCheck("Attempt to remove Attribute from locked Attributes");
        Attribute attribute = get(str);
        if (attribute != null) {
            this.map.remove(attribute.getID());
            Map map = this.keyMap;
            if (map != null) {
                map.remove(attribute.getID().toLowerCase());
            }
        }
        return attribute;
    }

    public Object clone() {
        return new LockableAttributesImpl(getParent(), this.map, this.keyMap);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (Attribute attribute : this.map.values()) {
            try {
                NamingEnumeration all = attribute.getAll();
                while (all.hasMore()) {
                    Object next = all.next();
                    stringBuffer.append(attribute.getID());
                    stringBuffer.append(": ");
                    stringBuffer.append(next);
                    stringBuffer.append('\n');
                }
            } catch (NamingException e2) {
                stringBuffer.append(ExceptionUtils.getFullStackTrace(e2));
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            if (r5 != r4) goto L4
            return r0
        L4:
            boolean r1 = r5 instanceof javax.naming.directory.Attributes
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            javax.naming.directory.Attributes r5 = (javax.naming.directory.Attributes) r5
            int r1 = r5.size()
            int r3 = r4.size()
            if (r1 == r3) goto L17
            return r2
        L17:
            boolean r1 = r5.isCaseIgnored()
            boolean r3 = r4.isCaseIgnored()
            if (r1 == r3) goto L22
            return r2
        L22:
            javax.naming.NamingEnumeration r5 = r5.getAll()
        L26:
            boolean r1 = r5.hasMoreElements()
            if (r1 == 0) goto L44
            java.lang.Object r1 = r5.nextElement()
            javax.naming.directory.Attribute r1 = (javax.naming.directory.Attribute) r1
            java.lang.String r3 = r1.getID()
            javax.naming.directory.Attribute r3 = r4.get(r3)
            if (r3 != 0) goto L3d
            return r2
        L3d:
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L26
            return r2
        L44:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.message.LockableAttributesImpl.equals(java.lang.Object):boolean");
    }

    private void setUserProvidedId(String str) {
        Map map = this.keyMap;
        if (map == null) {
            HashMap hashMap = new HashMap();
            this.keyMap = hashMap;
            hashMap.put(str.toLowerCase(), str);
        } else if (map.get(str) == null) {
            this.keyMap.put(str.toLowerCase(), str);
        }
    }

    private String getUserProvidedId(String str) {
        if (this.map.containsKey(str)) {
            return str;
        }
        Map map = this.keyMap;
        if (map == null) {
            this.keyMap = new HashMap();
            return null;
        }
        return (String) map.get(str.toLowerCase());
    }
}
