package org.apache.ldap.common.util;

import java.util.Dictionary;
import java.util.Enumeration;
import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;
/* loaded from: classes3.dex */
public class PreferencesDictionary extends Dictionary {
    private final Preferences prefs;

    public PreferencesDictionary(Preferences preferences) {
        this.prefs = preferences;
    }

    public Preferences getPreferences() {
        return this.prefs;
    }

    @Override // java.util.Dictionary
    public int size() {
        try {
            return this.prefs.keys().length;
        } catch (BackingStoreException e2) {
            throw new NestableRuntimeException("can't get keys from prefs", e2);
        }
    }

    @Override // java.util.Dictionary
    public boolean isEmpty() {
        try {
            return this.prefs.keys().length == 0;
        } catch (BackingStoreException e2) {
            throw new NestableRuntimeException("can't get keys from prefs", e2);
        }
    }

    @Override // java.util.Dictionary
    public Enumeration elements() {
        try {
            return new ArrayEnumeration(this.prefs.keys()) { // from class: org.apache.ldap.common.util.PreferencesDictionary.1
                @Override // org.apache.ldap.common.util.ArrayEnumeration, java.util.Enumeration
                public Object nextElement() {
                    return PreferencesDictionary.this.prefs.get((String) super.nextElement(), null);
                }
            };
        } catch (BackingStoreException e2) {
            throw new NestableRuntimeException("can't get keys from prefs", e2);
        }
    }

    @Override // java.util.Dictionary
    public Enumeration keys() {
        try {
            return new ArrayEnumeration(this.prefs.keys());
        } catch (BackingStoreException e2) {
            throw new NestableRuntimeException("can't get keys from prefs", e2);
        }
    }

    @Override // java.util.Dictionary
    public Object get(Object obj) {
        if (obj instanceof String) {
            return this.prefs.get((String) obj, null);
        }
        return this.prefs.get(obj.toString(), null);
    }

    @Override // java.util.Dictionary
    public Object remove(Object obj) {
        Object obj2 = get(obj);
        if (obj instanceof String) {
            this.prefs.remove((String) obj);
        } else {
            this.prefs.remove(obj.toString());
        }
        return obj2;
    }

    @Override // java.util.Dictionary
    public Object put(Object obj, Object obj2) {
        String obj3;
        String obj4;
        Object obj5 = get(obj);
        if (obj instanceof String) {
            obj3 = (String) obj;
        } else {
            obj3 = obj.toString();
        }
        if (obj2 instanceof String) {
            obj4 = (String) obj2;
        } else {
            obj4 = obj2.toString();
        }
        this.prefs.put(obj3, obj4);
        return obj5;
    }
}
