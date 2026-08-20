package com.pgl.ssdk;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* compiled from: JavaCalls.java */
/* loaded from: classes3.dex */
public class I {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f12173a;

    /* compiled from: JavaCalls.java */
    /* loaded from: classes3.dex */
    public static class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<? extends T> f12174a;

        /* renamed from: b  reason: collision with root package name */
        public final T f12175b;
    }

    static {
        HashMap hashMap = new HashMap();
        f12173a = hashMap;
        hashMap.put(Boolean.class, Boolean.TYPE);
        hashMap.put(Byte.class, Byte.TYPE);
        hashMap.put(Character.class, Character.TYPE);
        hashMap.put(Short.class, Short.TYPE);
        hashMap.put(Integer.class, Integer.TYPE);
        hashMap.put(Float.class, Float.TYPE);
        hashMap.put(Long.class, Long.TYPE);
        hashMap.put(Double.class, Double.TYPE);
        Class cls = Boolean.TYPE;
        hashMap.put(cls, cls);
        Class cls2 = Byte.TYPE;
        hashMap.put(cls2, cls2);
        Class cls3 = Character.TYPE;
        hashMap.put(cls3, cls3);
        Class cls4 = Short.TYPE;
        hashMap.put(cls4, cls4);
        Class cls5 = Integer.TYPE;
        hashMap.put(cls5, cls5);
        Class cls6 = Float.TYPE;
        hashMap.put(cls6, cls6);
        Class cls7 = Long.TYPE;
        hashMap.put(cls7, cls7);
        Class cls8 = Double.TYPE;
        hashMap.put(cls8, cls8);
    }

    public static void a(String str, String str2, Object... objArr) {
        try {
            a(Class.forName(str), str2, objArr);
        } catch (Exception unused) {
        }
    }

    private static Method a(Class<?> cls, String str, Class... clsArr) throws NoSuchMethodException, SecurityException {
        Method method;
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (str != null) {
            int length = declaredMethods.length;
            int i = 0;
            loop0: while (true) {
                if (i >= length) {
                    method = null;
                    break;
                }
                method = declaredMethods[i];
                if (method.getName().equals(str)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes == null) {
                        if (clsArr == null || clsArr.length == 0) {
                            break;
                        }
                    } else if (clsArr == null) {
                        if (parameterTypes.length == 0) {
                            break;
                        }
                    } else if (parameterTypes.length == clsArr.length) {
                        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                            if (!parameterTypes[i2].isAssignableFrom(clsArr[i2])) {
                                Map<Class<?>, Class<?>> map = f12173a;
                                if (map.containsKey(parameterTypes[i2]) && map.get(parameterTypes[i2]).equals(map.get(clsArr[i2]))) {
                                }
                            }
                        }
                        break loop0;
                    } else {
                        continue;
                    }
                }
                i++;
            }
            if (method == null) {
                if (cls.getSuperclass() != null) {
                    return a((Class<?>) cls.getSuperclass(), str, clsArr);
                }
                throw new NoSuchMethodException();
            }
            method.setAccessible(true);
            return method;
        }
        throw new NullPointerException("Method name must not be null.");
    }

    public static void a(Class<?> cls, String str, Object... objArr) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        Object[] objArr2;
        if (objArr == null || objArr.length <= 0) {
            clsArr = null;
        } else {
            clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                if (obj != null && (obj instanceof a)) {
                    clsArr[i] = ((a) obj).f12174a;
                } else {
                    clsArr[i] = obj == null ? null : obj.getClass();
                }
            }
        }
        Method a2 = a(cls, str, clsArr);
        if (objArr == null || objArr.length <= 0) {
            objArr2 = null;
        } else {
            objArr2 = new Object[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object obj2 = objArr[i2];
                if (obj2 != null && (obj2 instanceof a)) {
                    objArr2[i2] = ((a) obj2).f12175b;
                } else {
                    objArr2[i2] = obj2;
                }
            }
        }
        a2.invoke(null, objArr2);
    }
}
