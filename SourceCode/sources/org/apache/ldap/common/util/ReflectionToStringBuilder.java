package org.apache.ldap.common.util;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class ReflectionToStringBuilder extends ToStringBuilder {
    private static ThreadLocal registry = new ThreadLocal() { // from class: org.apache.ldap.common.util.ReflectionToStringBuilder.1
        @Override // java.lang.ThreadLocal
        protected synchronized Object initialValue() {
            return new HashSet();
        }
    };
    private boolean appendStatics;
    private boolean appendTransients;
    private Class upToClass;

    static Set getRegistry() {
        return (Set) registry.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isRegistered(Object obj) {
        return getRegistry().contains(obj);
    }

    static void register(Object obj) {
        getRegistry().add(obj);
    }

    public static String toString(Object obj) {
        return toString(obj, null, false, false, null);
    }

    public static String toString(Object obj, ToStringStyle toStringStyle) {
        return toString(obj, toStringStyle, false, false, null);
    }

    public static String toString(Object obj, ToStringStyle toStringStyle, boolean z) {
        return toString(obj, toStringStyle, z, false, null);
    }

    public static String toString(Object obj, ToStringStyle toStringStyle, boolean z, boolean z2) {
        return toString(obj, toStringStyle, z, z2, null);
    }

    public static String toString(Object obj, ToStringStyle toStringStyle, boolean z, boolean z2, Class cls) {
        return new ReflectionToStringBuilder(obj, toStringStyle, null, cls, z, z2).toString();
    }

    public static String toString(Object obj, ToStringStyle toStringStyle, boolean z, Class cls) {
        return new ReflectionToStringBuilder(obj, toStringStyle, null, cls, z).toString();
    }

    static void unregister(Object obj) {
        getRegistry().remove(obj);
    }

    public ReflectionToStringBuilder(Object obj) {
        super(obj);
        this.appendStatics = false;
        this.appendTransients = false;
        this.upToClass = null;
    }

    public ReflectionToStringBuilder(Object obj, ToStringStyle toStringStyle) {
        super(obj, toStringStyle);
        this.appendStatics = false;
        this.appendTransients = false;
        this.upToClass = null;
    }

    public ReflectionToStringBuilder(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer) {
        super(obj, toStringStyle, stringBuffer);
        this.appendStatics = false;
        this.appendTransients = false;
        this.upToClass = null;
    }

    public ReflectionToStringBuilder(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer, Class cls, boolean z) {
        super(obj, toStringStyle, stringBuffer);
        this.appendStatics = false;
        this.appendTransients = false;
        this.upToClass = null;
        setUpToClass(cls);
        setAppendTransients(z);
    }

    public ReflectionToStringBuilder(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer, Class cls, boolean z, boolean z2) {
        super(obj, toStringStyle, stringBuffer);
        this.appendStatics = false;
        this.appendTransients = false;
        this.upToClass = null;
        setUpToClass(cls);
        setAppendTransients(z);
        setAppendStatics(z2);
    }

    protected boolean accept(Field field) {
        if (field.getName().indexOf(36) != -1) {
            return false;
        }
        if (!Modifier.isTransient(field.getModifiers()) || isAppendTransients()) {
            return !Modifier.isStatic(field.getModifiers()) || isAppendStatics();
        }
        return false;
    }

    protected void appendFieldsIn(Class cls) {
        if (isRegistered(getObject())) {
            appendAsObjectToString(getObject());
            return;
        }
        try {
            registerObject();
            if (cls.isArray()) {
                reflectionAppendArray(getObject());
                return;
            }
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                String name = field.getName();
                if (accept(field)) {
                    try {
                        Object value = getValue(field);
                        if (isRegistered(value) && !field.getType().isPrimitive()) {
                            getStyle().appendFieldStart(getStringBuffer(), name);
                            appendAsObjectToString(value);
                        } else {
                            try {
                                registerObject();
                                append(name, value);
                                unregisterObject();
                            } finally {
                            }
                        }
                    } catch (IllegalAccessException e2) {
                        throw new InternalError(new StringBuffer().append("Unexpected IllegalAccessException: ").append(e2.getMessage()).toString());
                    }
                }
            }
        } finally {
        }
    }

    public Class getUpToClass() {
        return this.upToClass;
    }

    protected Object getValue(Field field) throws IllegalArgumentException, IllegalAccessException {
        return field.get(getObject());
    }

    public boolean isAppendStatics() {
        return this.appendStatics;
    }

    public boolean isAppendTransients() {
        return this.appendTransients;
    }

    public ToStringBuilder reflectionAppendArray(Object obj) {
        getStyle().reflectionAppendArrayDetail(getStringBuffer(), null, obj);
        return this;
    }

    void registerObject() {
        register(getObject());
    }

    public void setAppendStatics(boolean z) {
        this.appendStatics = z;
    }

    public void setAppendTransients(boolean z) {
        this.appendTransients = z;
    }

    public void setUpToClass(Class cls) {
        this.upToClass = cls;
    }

    @Override // org.apache.ldap.common.util.ToStringBuilder
    public String toString() {
        if (getObject() == null) {
            return getStyle().getNullText();
        }
        Class<?> cls = getObject().getClass();
        appendFieldsIn(cls);
        while (cls.getSuperclass() != null && cls != getUpToClass()) {
            cls = cls.getSuperclass();
            appendFieldsIn(cls);
        }
        return super.toString();
    }

    void unregisterObject() {
        unregister(getObject());
    }
}
