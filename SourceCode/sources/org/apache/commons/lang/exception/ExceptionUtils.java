package org.apache.commons.lang.exception;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.SystemUtils;
/* loaded from: classes5.dex */
public class ExceptionUtils {
    private static String[] CAUSE_METHOD_NAMES = {"getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested"};
    private static final Method THROWABLE_CAUSE_METHOD;
    static final String WRAPPED_MARKER = " [wrapped] ";
    static /* synthetic */ Class class$java$lang$Throwable;

    static {
        Method method = null;
        try {
            Class cls = class$java$lang$Throwable;
            if (cls == null) {
                cls = class$("java.lang.Throwable");
                class$java$lang$Throwable = cls;
            }
            method = cls.getMethod("getCause", null);
        } catch (Exception unused) {
        }
        THROWABLE_CAUSE_METHOD = method;
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public static void addCauseMethodName(String str) {
        if (StringUtils.isNotEmpty(str)) {
            ArrayList arrayList = new ArrayList(Arrays.asList(CAUSE_METHOD_NAMES));
            arrayList.add(str);
            CAUSE_METHOD_NAMES = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
    }

    public static Throwable getCause(Throwable th) {
        return getCause(th, CAUSE_METHOD_NAMES);
    }

    public static Throwable getCause(Throwable th, String[] strArr) {
        String str;
        if (th == null) {
            return null;
        }
        Throwable causeUsingWellKnownTypes = getCauseUsingWellKnownTypes(th);
        if (causeUsingWellKnownTypes == null) {
            if (strArr == null) {
                strArr = CAUSE_METHOD_NAMES;
            }
            for (int i = 0; i < strArr.length && ((str = strArr[i]) == null || (causeUsingWellKnownTypes = getCauseUsingMethodName(th, str)) == null); i++) {
            }
            return causeUsingWellKnownTypes == null ? getCauseUsingFieldName(th, "detail") : causeUsingWellKnownTypes;
        }
        return causeUsingWellKnownTypes;
    }

    public static Throwable getRootCause(Throwable th) {
        Throwable cause = getCause(th);
        if (cause != null) {
            while (true) {
                Throwable cause2 = getCause(cause);
                if (cause2 == null) {
                    break;
                }
                cause = cause2;
            }
        }
        return cause;
    }

    private static Throwable getCauseUsingWellKnownTypes(Throwable th) {
        if (th instanceof Nestable) {
            return ((Nestable) th).getCause();
        }
        if (th instanceof SQLException) {
            return ((SQLException) th).getNextException();
        }
        if (th instanceof InvocationTargetException) {
            return ((InvocationTargetException) th).getTargetException();
        }
        return null;
    }

    private static Throwable getCauseUsingMethodName(Throwable th, String str) {
        Method method;
        try {
            method = th.getClass().getMethod(str, null);
        } catch (NoSuchMethodException | SecurityException unused) {
            method = null;
        }
        if (method != null) {
            Class cls = class$java$lang$Throwable;
            if (cls == null) {
                cls = class$("java.lang.Throwable");
                class$java$lang$Throwable = cls;
            }
            if (cls.isAssignableFrom(method.getReturnType())) {
                try {
                    return (Throwable) method.invoke(th, ArrayUtils.EMPTY_OBJECT_ARRAY);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                }
            }
        }
        return null;
    }

    private static Throwable getCauseUsingFieldName(Throwable th, String str) {
        Field field;
        try {
            field = th.getClass().getField(str);
        } catch (NoSuchFieldException | SecurityException unused) {
            field = null;
        }
        if (field != null) {
            Class cls = class$java$lang$Throwable;
            if (cls == null) {
                cls = class$("java.lang.Throwable");
                class$java$lang$Throwable = cls;
            }
            if (cls.isAssignableFrom(field.getType())) {
                try {
                    return (Throwable) field.get(th);
                } catch (IllegalAccessException | IllegalArgumentException unused2) {
                }
            }
        }
        return null;
    }

    public static boolean isThrowableNested() {
        return THROWABLE_CAUSE_METHOD != null;
    }

    public static boolean isNestedThrowable(Throwable th) {
        if (th == null) {
            return false;
        }
        if ((th instanceof Nestable) || (th instanceof SQLException) || (th instanceof InvocationTargetException) || isThrowableNested()) {
            return true;
        }
        Class<?> cls = th.getClass();
        int length = CAUSE_METHOD_NAMES.length;
        for (int i = 0; i < length; i++) {
            try {
                Method method = cls.getMethod(CAUSE_METHOD_NAMES[i], null);
                if (method == null) {
                    continue;
                } else {
                    Class cls2 = class$java$lang$Throwable;
                    if (cls2 == null) {
                        cls2 = class$("java.lang.Throwable");
                        class$java$lang$Throwable = cls2;
                    }
                    if (cls2.isAssignableFrom(method.getReturnType())) {
                        return true;
                    }
                }
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        return cls.getField("detail") != null;
    }

    public static int getThrowableCount(Throwable th) {
        int i = 0;
        while (th != null) {
            i++;
            th = getCause(th);
        }
        return i;
    }

    public static Throwable[] getThrowables(Throwable th) {
        ArrayList arrayList = new ArrayList();
        while (th != null) {
            arrayList.add(th);
            th = getCause(th);
        }
        return (Throwable[]) arrayList.toArray(new Throwable[arrayList.size()]);
    }

    public static int indexOfThrowable(Throwable th, Class cls) {
        return indexOfThrowable(th, cls, 0);
    }

    public static int indexOfThrowable(Throwable th, Class cls, int i) {
        if (th == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        Throwable[] throwables = getThrowables(th);
        if (i >= throwables.length) {
            return -1;
        }
        while (i < throwables.length) {
            if (throwables[i].getClass().equals(cls)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static void printRootCauseStackTrace(Throwable th) {
        printRootCauseStackTrace(th, System.err);
    }

    public static void printRootCauseStackTrace(Throwable th, PrintStream printStream) {
        if (th == null) {
            return;
        }
        if (printStream == null) {
            throw new IllegalArgumentException("The PrintStream must not be null");
        }
        for (String str : getRootCauseStackTrace(th)) {
            printStream.println(str);
        }
        printStream.flush();
    }

    public static void printRootCauseStackTrace(Throwable th, PrintWriter printWriter) {
        if (th == null) {
            return;
        }
        if (printWriter == null) {
            throw new IllegalArgumentException("The PrintWriter must not be null");
        }
        for (String str : getRootCauseStackTrace(th)) {
            printWriter.println(str);
        }
        printWriter.flush();
    }

    public static String[] getRootCauseStackTrace(Throwable th) {
        List list;
        if (th == null) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        Throwable[] throwables = getThrowables(th);
        int length = throwables.length;
        ArrayList arrayList = new ArrayList();
        int i = length - 1;
        List stackFrameList = getStackFrameList(throwables[i]);
        while (true) {
            int i2 = length - 1;
            if (i2 >= 0) {
                if (i2 != 0) {
                    list = getStackFrameList(throwables[length - 2]);
                    removeCommonFrames(stackFrameList, list);
                } else {
                    list = stackFrameList;
                }
                if (i2 == i) {
                    arrayList.add(throwables[i2].toString());
                } else {
                    arrayList.add(new StringBuffer(WRAPPED_MARKER).append(throwables[i2].toString()).toString());
                }
                for (int i3 = 0; i3 < stackFrameList.size(); i3++) {
                    arrayList.add(stackFrameList.get(i3));
                }
                stackFrameList = list;
                length = i2;
            } else {
                return (String[]) arrayList.toArray(new String[0]);
            }
        }
    }

    public static void removeCommonFrames(List list, List list2) {
        if (list == null || list2 == null) {
            throw new IllegalArgumentException("The List must not be null");
        }
        int size = list.size() - 1;
        for (int size2 = list2.size() - 1; size >= 0 && size2 >= 0; size2--) {
            if (((String) list.get(size)).equals((String) list2.get(size2))) {
                list.remove(size);
            }
            size--;
        }
    }

    public static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    public static String getFullStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
        Throwable[] throwables = getThrowables(th);
        for (int i = 0; i < throwables.length; i++) {
            throwables[i].printStackTrace(printWriter);
            if (isNestedThrowable(throwables[i])) {
                break;
            }
        }
        return stringWriter.getBuffer().toString();
    }

    public static String[] getStackFrames(Throwable th) {
        if (th == null) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        return getStackFrames(getStackTrace(th));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] getStackFrames(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, SystemUtils.LINE_SEPARATOR);
        LinkedList linkedList = new LinkedList();
        while (stringTokenizer.hasMoreTokens()) {
            linkedList.add(stringTokenizer.nextToken());
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    static List getStackFrameList(Throwable th) {
        StringTokenizer stringTokenizer = new StringTokenizer(getStackTrace(th), SystemUtils.LINE_SEPARATOR);
        LinkedList linkedList = new LinkedList();
        boolean z = false;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf("at");
            if (indexOf != -1 && nextToken.substring(0, indexOf).trim().length() == 0) {
                linkedList.add(nextToken);
                z = true;
            } else if (z) {
                break;
            }
        }
        return linkedList;
    }
}
