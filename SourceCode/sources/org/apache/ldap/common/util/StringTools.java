package org.apache.ldap.common.util;

import com.amazon.aps.shared.util.APSSharedUtil;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
import org.apache.regexp.RE;
import org.apache.regexp.RESyntaxException;
import org.slf4j.Marker;
/* loaded from: classes3.dex */
public class StringTools {
    public static String trimConsecutiveToOne(String str, char c2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        for (int i = 0; i < stringBuffer.length(); i++) {
            if (stringBuffer.charAt(i) == c2) {
                while (true) {
                    int i2 = i + 1;
                    if (i2 < stringBuffer.length() && stringBuffer.charAt(i2) == c2) {
                        stringBuffer.deleteCharAt(i2);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }

    public static String deepTrim(String str) {
        return deepTrim(str, false);
    }

    public static String deepTrimToLower(String str) {
        return deepTrim(str, true);
    }

    public static String deepTrim(String str, boolean z) {
        if (str == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && z) {
                charAt = Character.toLowerCase(charAt);
            }
            if (Character.isWhitespace(charAt)) {
                if (stringBuffer.length() - 1 >= 0 && stringBuffer.charAt(stringBuffer.length() - 1) != ' ') {
                    stringBuffer.append(' ');
                }
            } else {
                stringBuffer.append(charAt);
            }
        }
        int length = stringBuffer.length() - 1;
        if (length >= 0 && Character.isWhitespace(stringBuffer.charAt(length))) {
            stringBuffer.deleteCharAt(length);
        }
        return stringBuffer.toString();
    }

    public static String centerTrunc(String str, int i, int i2) {
        if (str.length() <= i + i2 + 7 + (str.length() / 10)) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer("[");
        stringBuffer.append(str.length()).append("][");
        stringBuffer.append(str.substring(0, i)).append(APSSharedUtil.TRUNCATE_SEPARATOR);
        stringBuffer.append(str.substring(str.length() - i2));
        stringBuffer.append(']');
        return stringBuffer.toString();
    }

    public static String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length << 1);
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                hexString = new StringBuffer("0").append(hexString).toString();
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static byte[] toByteArray(String str) {
        int length = str.length() >> 1;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public static String formatHtml(String str, boolean z, boolean z2, boolean z3) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\n') {
                if (charAt != '\r') {
                    if (charAt != '\"') {
                        if (charAt == '&') {
                            stringBuffer.append("&amp;");
                        } else if (charAt != '<') {
                            if (charAt != '>') {
                                stringBuffer.append(charAt);
                            } else if (z2) {
                                stringBuffer.append("&gt;");
                            } else {
                                stringBuffer.append(charAt);
                            }
                        } else if (z2) {
                            stringBuffer.append("&lt;");
                        } else {
                            stringBuffer.append(charAt);
                        }
                    } else if (z3) {
                        stringBuffer.append("&quot;");
                    } else {
                        stringBuffer.append(charAt);
                    }
                }
            } else if (!z) {
                stringBuffer.append(charAt);
            } else if (z2) {
                stringBuffer.append("&lt;br&gt;");
            } else {
                stringBuffer.append("<br>");
            }
        }
        return stringBuffer.toString();
    }

    public static RE getRegex(String str, String[] strArr, String str2) throws RESyntaxException {
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null) {
            stringBuffer.append('^').append(str);
        }
        if (strArr != null) {
            for (String str3 : strArr) {
                stringBuffer.append(".*").append(str3);
            }
        }
        if (str2 != null) {
            stringBuffer.append(".*").append(str2);
        }
        return new RE(stringBuffer.toString());
    }

    public static RE getRegex(String str) throws RESyntaxException {
        if (str == null) {
            throw new RESyntaxException("Regex was null");
        }
        ArrayList arrayList = new ArrayList();
        int indexOf = str.indexOf(42);
        if (indexOf == -1) {
            throw new RESyntaxException("Ldap regex must have wild cards!");
        }
        String substring = str.charAt(0) != '*' ? str.substring(0, indexOf) : null;
        String substring2 = str.substring(indexOf + 1, str.length());
        while (true) {
            int indexOf2 = substring2.indexOf(42);
            if (indexOf2 == -1) {
                break;
            }
            arrayList.add(substring2.substring(0, indexOf2));
            substring2 = substring2.substring(indexOf2 + 1, substring2.length());
        }
        substring2 = (substring2.endsWith(Marker.ANY_MARKER) || substring2.length() <= 0) ? null : null;
        if (arrayList.size() > 0) {
            int size = arrayList.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = (String) arrayList.get(i);
            }
            return getRegex(substring, strArr, substring2);
        }
        return getRegex(substring, null, substring2);
    }

    public static List getPaths(String str, FileFilter fileFilter) {
        int length = str.length() - 1;
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.trim().equals("")) {
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                int indexOf = str.indexOf(File.pathSeparatorChar, i);
                if (indexOf != -1) {
                    String substring = str.substring(i, indexOf);
                    if (!substring.trim().equals("") && (fileFilter == null || fileFilter.accept(new File(substring)))) {
                        arrayList.add(substring);
                    }
                    i = indexOf + 1;
                } else if (i < length) {
                    String substring2 = str.substring(i);
                    if (!substring2.trim().equals("") && (fileFilter == null || fileFilter.accept(new File(substring2)))) {
                        arrayList.add(substring2);
                    }
                }
            }
        }
        return arrayList;
    }
}
