package org.apache.ldap.common.util;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ClassUtils {
    public static final Comparator CLASS_NAME_COMPARATOR;
    private static final String EMPTY = "";
    public static final char INNER_CLASS_SEPARATOR_CHAR = '$';
    public static final Comparator PACKAGE_NAME_COMPARATOR;
    public static final char PACKAGE_SEPARATOR_CHAR = '.';
    static /* synthetic */ Class class$java$lang$Boolean;
    static /* synthetic */ Class class$java$lang$Byte;
    static /* synthetic */ Class class$java$lang$Character;
    static /* synthetic */ Class class$java$lang$Double;
    static /* synthetic */ Class class$java$lang$Float;
    static /* synthetic */ Class class$java$lang$Integer;
    static /* synthetic */ Class class$java$lang$Long;
    static /* synthetic */ Class class$java$lang$Short;
    private static Map primitiveWrapperMap;
    public static final String PACKAGE_SEPARATOR = String.valueOf('.');
    public static final String INNER_CLASS_SEPARATOR = String.valueOf('$');

    static {
        HashMap hashMap = new HashMap();
        primitiveWrapperMap = hashMap;
        Class cls = Boolean.TYPE;
        Class cls2 = class$java$lang$Boolean;
        if (cls2 == null) {
            cls2 = class$("java.lang.Boolean");
            class$java$lang$Boolean = cls2;
        }
        hashMap.put(cls, cls2);
        Map map = primitiveWrapperMap;
        Class cls3 = Byte.TYPE;
        Class cls4 = class$java$lang$Byte;
        if (cls4 == null) {
            cls4 = class$("java.lang.Byte");
            class$java$lang$Byte = cls4;
        }
        map.put(cls3, cls4);
        Map map2 = primitiveWrapperMap;
        Class cls5 = Character.TYPE;
        Class cls6 = class$java$lang$Character;
        if (cls6 == null) {
            cls6 = class$("java.lang.Character");
            class$java$lang$Character = cls6;
        }
        map2.put(cls5, cls6);
        Map map3 = primitiveWrapperMap;
        Class cls7 = Short.TYPE;
        Class cls8 = class$java$lang$Short;
        if (cls8 == null) {
            cls8 = class$("java.lang.Short");
            class$java$lang$Short = cls8;
        }
        map3.put(cls7, cls8);
        Map map4 = primitiveWrapperMap;
        Class cls9 = Integer.TYPE;
        Class cls10 = class$java$lang$Integer;
        if (cls10 == null) {
            cls10 = class$("java.lang.Integer");
            class$java$lang$Integer = cls10;
        }
        map4.put(cls9, cls10);
        Map map5 = primitiveWrapperMap;
        Class cls11 = Long.TYPE;
        Class cls12 = class$java$lang$Long;
        if (cls12 == null) {
            cls12 = class$("java.lang.Long");
            class$java$lang$Long = cls12;
        }
        map5.put(cls11, cls12);
        Map map6 = primitiveWrapperMap;
        Class cls13 = Double.TYPE;
        Class cls14 = class$java$lang$Double;
        if (cls14 == null) {
            cls14 = class$("java.lang.Double");
            class$java$lang$Double = cls14;
        }
        map6.put(cls13, cls14);
        Map map7 = primitiveWrapperMap;
        Class cls15 = Float.TYPE;
        Class cls16 = class$java$lang$Float;
        if (cls16 == null) {
            cls16 = class$("java.lang.Float");
            class$java$lang$Float = cls16;
        }
        map7.put(cls15, cls16);
        CLASS_NAME_COMPARATOR = new ClassNameComparator();
        PACKAGE_NAME_COMPARATOR = new PackageNameComparator();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static String getShortClassName(Object obj, String str) {
        return obj == null ? str : getShortClassName(obj.getClass().getName());
    }

    public static String getShortClassName(Class cls) {
        if (cls == null) {
            return "";
        }
        return getShortClassName(cls.getName());
    }

    public static String getShortClassName(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c2 = charArray[i2];
            if (c2 == '.') {
                i = i2 + 1;
            } else if (c2 == '$') {
                charArray[i2] = '.';
            }
        }
        return new String(charArray, i, charArray.length - i);
    }

    public static String getPackageName(Object obj, String str) {
        return obj == null ? str : getPackageName(obj.getClass().getName());
    }

    public static String getPackageName(Class cls) {
        if (cls == null) {
            return "";
        }
        return getPackageName(cls.getName());
    }

    public static String getPackageName(String str) {
        int lastIndexOf;
        if (str == null || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return "";
        }
        return str.substring(0, lastIndexOf);
    }

    public static List getAllSuperclasses(Class cls) {
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Class superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            arrayList.add(superclass);
        }
        return arrayList;
    }

    public static List getAllInterfaces(Class cls) {
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            Class<?>[] interfaces = cls.getInterfaces();
            for (int i = 0; i < interfaces.length; i++) {
                if (!arrayList.contains(interfaces[i])) {
                    arrayList.add(interfaces[i]);
                }
                for (Class cls2 : getAllInterfaces(interfaces[i])) {
                    if (!arrayList.contains(cls2)) {
                        arrayList.add(cls2);
                    }
                }
            }
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    public static List convertClassNamesToClasses(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(Class.forName((String) it.next()));
            } catch (Exception unused) {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public static List convertClassesToClassNames(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Class cls = (Class) it.next();
            if (cls == null) {
                arrayList.add(null);
            } else {
                arrayList.add(cls.getName());
            }
        }
        return arrayList;
    }

    public static boolean isAssignable(Class[] clsArr, Class[] clsArr2) {
        if (ArrayUtils.isSameLength(clsArr, clsArr2)) {
            if (clsArr == null) {
                clsArr = ArrayUtils.EMPTY_CLASS_ARRAY;
            }
            if (clsArr2 == null) {
                clsArr2 = ArrayUtils.EMPTY_CLASS_ARRAY;
            }
            for (int i = 0; i < clsArr.length; i++) {
                if (!isAssignable(clsArr[i], clsArr2[i])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static boolean isAssignable(Class cls, Class cls2) {
        if (cls2 == null) {
            return false;
        }
        if (cls == null) {
            return !cls2.isPrimitive();
        }
        if (cls.equals(cls2)) {
            return true;
        }
        if (cls.isPrimitive()) {
            if (cls2.isPrimitive()) {
                if (Integer.TYPE.equals(cls)) {
                    return Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
                } else if (Long.TYPE.equals(cls)) {
                    return Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
                } else if (Boolean.TYPE.equals(cls) || Double.TYPE.equals(cls)) {
                    return false;
                } else {
                    if (Float.TYPE.equals(cls)) {
                        return Double.TYPE.equals(cls2);
                    }
                    if (Character.TYPE.equals(cls)) {
                        return Integer.TYPE.equals(cls2) || Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
                    } else if (Short.TYPE.equals(cls)) {
                        return Integer.TYPE.equals(cls2) || Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
                    } else if (Byte.TYPE.equals(cls)) {
                        return Short.TYPE.equals(cls2) || Integer.TYPE.equals(cls2) || Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
                    } else {
                        return false;
                    }
                }
            }
            return false;
        }
        return cls2.isAssignableFrom(cls);
    }

    public static Class primitiveToWrapper(Class cls) {
        return (cls == null || !cls.isPrimitive()) ? cls : (Class) primitiveWrapperMap.get(cls);
    }

    public static Class[] primitivesToWrappers(Class[] clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        Class[] clsArr2 = new Class[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            clsArr2[i] = primitiveToWrapper(clsArr[i]);
        }
        return clsArr2;
    }

    public static boolean isInnerClass(Class cls) {
        return cls != null && cls.getName().indexOf(36) >= 0;
    }

    /* loaded from: classes3.dex */
    private static class ClassNameComparator implements Comparator {
        private ClassNameComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Class cls = (Class) obj;
            Class cls2 = (Class) obj2;
            if (cls == null) {
                return cls2 == null ? 0 : -1;
            } else if (cls2 == null) {
                return 1;
            } else {
                return cls.getName().compareTo(cls2.getName());
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class PackageNameComparator implements Comparator {
        private PackageNameComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Package r1 = (Package) obj;
            Package r2 = (Package) obj2;
            if (r1 == null) {
                return r2 == null ? 0 : -1;
            } else if (r2 == null) {
                return 1;
            } else {
                return r1.getName().compareTo(r2.getName());
            }
        }
    }
}
