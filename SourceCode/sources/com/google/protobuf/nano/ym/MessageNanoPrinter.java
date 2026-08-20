package com.google.protobuf.nano.ym;

import com.appodeal.ads.modules.common.internal.Constants;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.text.Typography;
/* loaded from: classes2.dex */
public final class MessageNanoPrinter {
    private static final String INDENT = "  ";
    private static final int MAX_STRING_LEN = 200;

    private MessageNanoPrinter() {
    }

    private static void appendQuotedBytes(byte[] bArr, StringBuffer stringBuffer) {
        if (bArr == null) {
            stringBuffer.append("\"\"");
            return;
        }
        stringBuffer.append(Typography.quote);
        for (byte b2 : bArr) {
            int i = b2 & 255;
            if (i == 92 || i == 34) {
                stringBuffer.append('\\').append((char) i);
            } else if (i < 32 || i >= 127) {
                stringBuffer.append(String.format("\\%03o", Integer.valueOf(i)));
            } else {
                stringBuffer.append((char) i);
            }
        }
        stringBuffer.append(Typography.quote);
    }

    private static String deCamelCaseify(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (i == 0) {
                charAt = Character.toLowerCase(charAt);
            } else if (Character.isUpperCase(charAt)) {
                stringBuffer.append('_').append(Character.toLowerCase(charAt));
            }
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }

    private static String escapeString(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\'') {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static String print(MessageNano messageNano) {
        StringBuilder sb;
        String message;
        if (messageNano == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            print(null, messageNano, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e2) {
            sb = new StringBuilder("Error printing proto: ");
            message = e2.getMessage();
            return sb.append(message).toString();
        } catch (InvocationTargetException e3) {
            sb = new StringBuilder("Error printing proto: ");
            message = e3.getMessage();
            return sb.append(message).toString();
        }
    }

    private static void print(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        Field[] fields;
        if (obj == null) {
            return;
        }
        if (!(obj instanceof MessageNano)) {
            stringBuffer2.append(stringBuffer).append(deCamelCaseify(str)).append(": ");
            if (obj instanceof String) {
                stringBuffer2.append("\"").append(sanitizeString((String) obj)).append("\"");
            } else if (obj instanceof byte[]) {
                appendQuotedBytes((byte[]) obj, stringBuffer2);
            } else {
                stringBuffer2.append(obj);
            }
            stringBuffer2.append("\n");
            return;
        }
        int length = stringBuffer.length();
        if (str != null) {
            stringBuffer2.append(stringBuffer).append(deCamelCaseify(str)).append(" <\n");
            stringBuffer.append(INDENT);
        }
        Class<?> cls = obj.getClass();
        for (Field field : cls.getFields()) {
            int modifiers = field.getModifiers();
            String name = field.getName();
            if ((modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                Class<?> type = field.getType();
                Object obj2 = field.get(obj);
                if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                    print(name, obj2, stringBuffer, stringBuffer2);
                } else {
                    int length2 = obj2 == null ? 0 : Array.getLength(obj2);
                    for (int i = 0; i < length2; i++) {
                        print(name, Array.get(obj2, i), stringBuffer, stringBuffer2);
                    }
                }
            }
        }
        for (Method method : cls.getMethods()) {
            String name2 = method.getName();
            if (name2.startsWith("set")) {
                String substring = name2.substring(3);
                try {
                    if (((Boolean) cls.getMethod("has" + substring, new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                        print(substring, cls.getMethod(Constants.GET + substring, new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                    }
                } catch (NoSuchMethodException unused) {
                }
            }
        }
        if (str != null) {
            stringBuffer.setLength(length);
            stringBuffer2.append(stringBuffer).append(">\n");
        }
    }

    private static String sanitizeString(String str) {
        if (!str.startsWith("http") && str.length() > 200) {
            str = str.substring(0, 200) + "[...]";
        }
        return escapeString(str);
    }
}
