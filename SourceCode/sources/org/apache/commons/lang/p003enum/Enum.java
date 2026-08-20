package org.apache.commons.lang.p003enum;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.ClassUtils;
import org.apache.commons.lang.StringUtils;
/* renamed from: org.apache.commons.lang.enum.Enum  reason: invalid package */
/* loaded from: classes5.dex */
public abstract class Enum implements Comparable, Serializable {
    private static final Map EMPTY_MAP = Collections.unmodifiableMap(new HashMap(0));
    private static final Map cEnumClasses = new HashMap();
    static /* synthetic */ Class class$org$apache$commons$lang$enum$Enum = null;
    static /* synthetic */ Class class$org$apache$commons$lang$enum$ValuedEnum = null;
    private static final long serialVersionUID = -487045951170455942L;
    private final transient int iHashCode;
    private final String iName;
    protected transient String iToString = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.apache.commons.lang.enum.Enum$Entry */
    /* loaded from: classes5.dex */
    public static class Entry {
        final List list;
        final Map map;
        final List unmodifiableList;
        final Map unmodifiableMap;

        private Entry() {
            HashMap hashMap = new HashMap();
            this.map = hashMap;
            this.unmodifiableMap = Collections.unmodifiableMap(hashMap);
            ArrayList arrayList = new ArrayList(25);
            this.list = arrayList;
            this.unmodifiableList = Collections.unmodifiableList(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Enum(String str) {
        init(str);
        this.iName = str;
        this.iHashCode = getEnumClass().hashCode() + 7 + (str.hashCode() * 3);
    }

    private void init(String str) {
        if (StringUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The Enum name must not be empty or null");
        }
        Class<?> enumClass = getEnumClass();
        if (enumClass == null) {
            throw new IllegalArgumentException("getEnumClass() must not be null");
        }
        for (Class<?> cls = getClass(); cls != null; cls = cls.getSuperclass()) {
            Class<?> cls2 = class$org$apache$commons$lang$enum$Enum;
            if (cls2 == null) {
                cls2 = class$("org.apache.commons.lang.enum.Enum");
                class$org$apache$commons$lang$enum$Enum = cls2;
            }
            if (cls == cls2) {
                break;
            }
            Class<?> cls3 = class$org$apache$commons$lang$enum$ValuedEnum;
            if (cls3 == null) {
                cls3 = class$("org.apache.commons.lang.enum.ValuedEnum");
                class$org$apache$commons$lang$enum$ValuedEnum = cls3;
            }
            if (cls == cls3) {
                break;
            } else if (cls == enumClass) {
                Map map = cEnumClasses;
                Entry entry = (Entry) map.get(enumClass);
                if (entry == null) {
                    entry = createEntry(enumClass);
                    map.put(enumClass, entry);
                }
                if (entry.map.containsKey(str)) {
                    throw new IllegalArgumentException(new StringBuffer("The Enum name must be unique, '").append(str).append("' has already been added").toString());
                }
                entry.map.put(str, this);
                entry.list.add(this);
                return;
            }
        }
        throw new IllegalArgumentException("getEnumClass() must return a superclass of this class");
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    protected Object readResolve() {
        Entry entry = (Entry) cEnumClasses.get(getEnumClass());
        if (entry == null) {
            return null;
        }
        return (Enum) entry.map.get(getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Enum getEnum(Class cls, String str) {
        Entry entry = getEntry(cls);
        if (entry == null) {
            return null;
        }
        return (Enum) entry.map.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Map getEnumMap(Class cls) {
        Entry entry = getEntry(cls);
        if (entry == null) {
            return EMPTY_MAP;
        }
        return entry.unmodifiableMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static List getEnumList(Class cls) {
        Entry entry = getEntry(cls);
        if (entry == null) {
            return Collections.EMPTY_LIST;
        }
        return entry.unmodifiableList;
    }

    protected static Iterator iterator(Class cls) {
        return getEnumList(cls).iterator();
    }

    private static Entry getEntry(Class cls) {
        if (cls == null) {
            throw new IllegalArgumentException("The Enum Class must not be null");
        }
        Class cls2 = class$org$apache$commons$lang$enum$Enum;
        if (cls2 == null) {
            cls2 = class$("org.apache.commons.lang.enum.Enum");
            class$org$apache$commons$lang$enum$Enum = cls2;
        }
        if (!cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("The Class must be a subclass of Enum");
        }
        return (Entry) cEnumClasses.get(cls);
    }

    private static Entry createEntry(Class cls) {
        Entry entry = new Entry();
        Class superclass = cls.getSuperclass();
        while (true) {
            if (superclass == null) {
                break;
            }
            Class cls2 = class$org$apache$commons$lang$enum$Enum;
            if (cls2 == null) {
                cls2 = class$("org.apache.commons.lang.enum.Enum");
                class$org$apache$commons$lang$enum$Enum = cls2;
            }
            if (superclass == cls2) {
                break;
            }
            Class cls3 = class$org$apache$commons$lang$enum$ValuedEnum;
            if (cls3 == null) {
                cls3 = class$("org.apache.commons.lang.enum.ValuedEnum");
                class$org$apache$commons$lang$enum$ValuedEnum = cls3;
            }
            if (superclass == cls3) {
                break;
            }
            Entry entry2 = (Entry) cEnumClasses.get(superclass);
            if (entry2 != null) {
                entry.list.addAll(entry2.list);
                entry.map.putAll(entry2.map);
                break;
            }
            superclass = superclass.getSuperclass();
        }
        return entry;
    }

    public final String getName() {
        return this.iName;
    }

    public Class getEnumClass() {
        return getClass();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj.getClass() == getClass()) {
            return this.iName.equals(((Enum) obj).iName);
        }
        if (((Enum) obj).getEnumClass().getName().equals(getEnumClass().getName())) {
            try {
                try {
                    return this.iName.equals(((Enum) obj).iName);
                } catch (ClassCastException unused) {
                    return this.iName.equals((String) obj.getClass().getMethod("getName", null).invoke(obj, null));
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.iHashCode;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == this) {
            return 0;
        }
        return this.iName.compareTo(((Enum) obj).iName);
    }

    public String toString() {
        if (this.iToString == null) {
            this.iToString = new StringBuffer().append(ClassUtils.getShortClassName(getEnumClass())).append("[").append(getName()).append("]").toString();
        }
        return this.iToString;
    }
}
