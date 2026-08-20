package org.apache.ldap.server.db;
/* loaded from: classes3.dex */
public class Tuple {
    private Object key;
    private Object value;

    public Tuple() {
    }

    public Tuple(Object obj, Object obj2) {
        this.key = obj;
        this.value = obj2;
    }

    public Object getKey() {
        return this.key;
    }

    public void setKey(Object obj) {
        this.key = obj;
    }

    public Object getValue() {
        return this.value;
    }

    public void setValue(Object obj) {
        this.value = obj;
    }
}
