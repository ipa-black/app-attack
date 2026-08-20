package org.apache.commons.lang;

import com.amazon.aps.shared.util.APSSharedUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class StringUtils {
    public static final String EMPTY = "";
    private static final String[] PADDING;
    private static final int PAD_LIMIT = 8192;

    public static String defaultString(String str, String str2) {
        return str == null ? str2 : str;
    }

    private static int min(int i, int i2, int i3) {
        if (i2 < i) {
            i = i2;
        }
        return i3 < i ? i3 : i;
    }

    static {
        String[] strArr = new String[65535];
        PADDING = strArr;
        strArr[32] = "                                                                ";
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNotEmpty(String str) {
        return str != null && str.length() > 0;
    }

    public static boolean isBlank(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i = 0; i < length; i++) {
                if (!Character.isWhitespace(str.charAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNotBlank(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i = 0; i < length; i++) {
                if (!Character.isWhitespace(str.charAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String clean(String str) {
        return str == null ? "" : str.trim();
    }

    public static String trim(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String trimToNull(String str) {
        String trim = trim(str);
        if (trim == null || trim.length() == 0) {
            return null;
        }
        return trim;
    }

    public static String trimToEmpty(String str) {
        return str == null ? "" : str.trim();
    }

    public static String strip(String str) {
        return strip(str, null);
    }

    public static String stripToNull(String str) {
        if (str == null) {
            return null;
        }
        String strip = strip(str, null);
        if (strip.length() == 0) {
            return null;
        }
        return strip;
    }

    public static String stripToEmpty(String str) {
        return str == null ? "" : strip(str, null);
    }

    public static String strip(String str, String str2) {
        return (str == null || str.length() == 0) ? str : stripEnd(stripStart(str, str2), str2);
    }

    public static String stripStart(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int i = 0;
        if (str2 == null) {
            while (i != length && Character.isWhitespace(str.charAt(i))) {
                i++;
            }
        } else if (str2.length() == 0) {
            return str;
        } else {
            while (i != length && str2.indexOf(str.charAt(i)) != -1) {
                i++;
            }
        }
        return str.substring(i);
    }

    public static String stripEnd(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        if (str2 == null) {
            while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                length--;
            }
        } else if (str2.length() == 0) {
            return str;
        } else {
            while (length != 0 && str2.indexOf(str.charAt(length - 1)) != -1) {
                length--;
            }
        }
        return str.substring(0, length);
    }

    public static String[] stripAll(String[] strArr) {
        return stripAll(strArr, null);
    }

    public static String[] stripAll(String[] strArr, String str) {
        int length;
        if (strArr == null || (length = strArr.length) == 0) {
            return strArr;
        }
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            strArr2[i] = strip(strArr[i], str);
        }
        return strArr2;
    }

    public static boolean equals(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    public static boolean equalsIgnoreCase(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static int indexOf(String str, char c2) {
        if (str == null || str.length() == 0) {
            return -1;
        }
        return str.indexOf(c2);
    }

    public static int indexOf(String str, char c2, int i) {
        if (str == null || str.length() == 0) {
            return -1;
        }
        return str.indexOf(c2, i);
    }

    public static int indexOf(String str, String str2) {
        if (str == null || str2 == null) {
            return -1;
        }
        return str.indexOf(str2);
    }

    public static int indexOf(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return -1;
        }
        if (str2.length() == 0 && i >= str.length()) {
            return str.length();
        }
        return str.indexOf(str2, i);
    }

    public static int lastIndexOf(String str, char c2) {
        if (str == null || str.length() == 0) {
            return -1;
        }
        return str.lastIndexOf(c2);
    }

    public static int lastIndexOf(String str, char c2, int i) {
        if (str == null || str.length() == 0) {
            return -1;
        }
        return str.lastIndexOf(c2, i);
    }

    public static int lastIndexOf(String str, String str2) {
        if (str == null || str2 == null) {
            return -1;
        }
        return str.lastIndexOf(str2);
    }

    public static int lastIndexOf(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return -1;
        }
        return str.lastIndexOf(str2, i);
    }

    public static boolean contains(String str, char c2) {
        return (str == null || str.length() == 0 || str.indexOf(c2) < 0) ? false : true;
    }

    public static boolean contains(String str, String str2) {
        return (str == null || str2 == null || str.indexOf(str2) < 0) ? false : true;
    }

    public static int indexOfAny(String str, char[] cArr) {
        if (str != null && str.length() != 0 && cArr != null && cArr.length != 0) {
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                for (char c2 : cArr) {
                    if (c2 == charAt) {
                        return i;
                    }
                }
            }
        }
        return -1;
    }

    public static int indexOfAny(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return -1;
        }
        return indexOfAny(str, str2.toCharArray());
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0023, code lost:
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOfAnyBut(java.lang.String r6, char[] r7) {
        /*
            r0 = -1
            if (r6 == 0) goto L2a
            int r1 = r6.length()
            if (r1 == 0) goto L2a
            if (r7 == 0) goto L2a
            int r1 = r7.length
            if (r1 != 0) goto Lf
            goto L2a
        Lf:
            r1 = 0
            r2 = r1
        L11:
            int r3 = r6.length()
            if (r2 >= r3) goto L2a
            char r3 = r6.charAt(r2)
            r4 = r1
        L1c:
            int r5 = r7.length
            if (r4 >= r5) goto L29
            char r5 = r7[r4]
            if (r5 != r3) goto L26
            int r2 = r2 + 1
            goto L11
        L26:
            int r4 = r4 + 1
            goto L1c
        L29:
            return r2
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang.StringUtils.indexOfAnyBut(java.lang.String, char[]):int");
    }

    public static int indexOfAnyBut(String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            for (int i = 0; i < str.length(); i++) {
                if (str2.indexOf(str.charAt(i)) < 0) {
                    return i;
                }
            }
        }
        return -1;
    }

    public static boolean containsOnly(String str, char[] cArr) {
        if (cArr == null || str == null) {
            return false;
        }
        if (str.length() == 0) {
            return true;
        }
        return cArr.length != 0 && indexOfAnyBut(str, cArr) == -1;
    }

    public static boolean containsOnly(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return containsOnly(str, str2.toCharArray());
    }

    public static boolean containsNone(String str, char[] cArr) {
        if (str != null && cArr != null) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                for (char c2 : cArr) {
                    if (c2 == charAt) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean containsNone(String str, String str2) {
        if (str == null || str2 == null) {
            return true;
        }
        return containsNone(str, str2.toCharArray());
    }

    public static int indexOfAny(String str, String[] strArr) {
        int indexOf;
        if (str == null || strArr == null) {
            return -1;
        }
        int i = Integer.MAX_VALUE;
        for (String str2 : strArr) {
            if (str2 != null && (indexOf = str.indexOf(str2)) != -1 && indexOf < i) {
                i = indexOf;
            }
        }
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i;
    }

    public static int lastIndexOfAny(String str, String[] strArr) {
        int lastIndexOf;
        int i = -1;
        if (str != null && strArr != null) {
            for (String str2 : strArr) {
                if (str2 != null && (lastIndexOf = str.lastIndexOf(str2)) > i) {
                    i = lastIndexOf;
                }
            }
        }
        return i;
    }

    public static String substring(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i < 0) {
            i += str.length();
        }
        if (i < 0) {
            i = 0;
        }
        if (i > str.length()) {
            return "";
        }
        return str.substring(i);
    }

    public static String substring(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0) {
            i2 += str.length();
        }
        if (i < 0) {
            i += str.length();
        }
        if (i2 > str.length()) {
            i2 = str.length();
        }
        if (i > i2) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        return str.substring(i, i2);
    }

    public static String left(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i < 0) {
            return "";
        }
        return str.length() <= i ? str : str.substring(0, i);
    }

    public static String right(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i < 0) {
            return "";
        }
        return str.length() <= i ? str : str.substring(str.length() - i);
    }

    public static String mid(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0 || i > str.length()) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        int i3 = i2 + i;
        if (str.length() <= i3) {
            return str.substring(i);
        }
        return str.substring(i, i3);
    }

    public static String substringBefore(String str, String str2) {
        if (str == null || str2 == null || str.length() == 0) {
            return str;
        }
        if (str2.length() == 0) {
            return "";
        }
        int indexOf = str.indexOf(str2);
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    public static String substringAfter(String str, String str2) {
        int indexOf;
        if (str == null || str.length() == 0) {
            return str;
        }
        if (str2 == null || (indexOf = str.indexOf(str2)) == -1) {
            return "";
        }
        return str.substring(indexOf + str2.length());
    }

    public static String substringBeforeLast(String str, String str2) {
        int lastIndexOf;
        return (str == null || str2 == null || str.length() == 0 || str2.length() == 0 || (lastIndexOf = str.lastIndexOf(str2)) == -1) ? str : str.substring(0, lastIndexOf);
    }

    public static String substringAfterLast(String str, String str2) {
        int lastIndexOf;
        if (str == null || str.length() == 0) {
            return str;
        }
        if (str2 == null || str2.length() == 0 || (lastIndexOf = str.lastIndexOf(str2)) == -1 || lastIndexOf == str.length() - str2.length()) {
            return "";
        }
        return str.substring(lastIndexOf + str2.length());
    }

    public static String substringBetween(String str, String str2) {
        return substringBetween(str, str2, str2);
    }

    public static String substringBetween(String str, String str2, String str3) {
        int indexOf;
        int indexOf2;
        if (str == null || str2 == null || str3 == null || (indexOf = str.indexOf(str2)) == -1 || (indexOf2 = str.indexOf(str3, str2.length() + indexOf)) == -1) {
            return null;
        }
        return str.substring(indexOf + str2.length(), indexOf2);
    }

    public static String getNestedString(String str, String str2) {
        return substringBetween(str, str2, str2);
    }

    public static String getNestedString(String str, String str2, String str3) {
        return substringBetween(str, str2, str3);
    }

    public static String[] split(String str) {
        return split(str, null, -1);
    }

    public static String[] split(String str, char c2) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (i < length) {
            if (str.charAt(i) == c2) {
                if (z) {
                    arrayList.add(str.substring(i2, i));
                    z = false;
                }
                i2 = i + 1;
                i = i2;
            } else {
                i++;
                z = true;
            }
        }
        if (z) {
            arrayList.add(str.substring(i2, i));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] split(String str, String str2) {
        return split(str, str2, -1);
    }

    public static String[] split(String str, String str2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean z2;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        if (str2 == null) {
            i4 = 0;
            z2 = false;
            i3 = 0;
            int i5 = 1;
            while (i4 < length) {
                if (Character.isWhitespace(str.charAt(i4))) {
                    if (z2) {
                        int i6 = i5 + 1;
                        if (i5 == i) {
                            i4 = length;
                        }
                        arrayList.add(str.substring(i3, i4));
                        i5 = i6;
                        z2 = false;
                    }
                    i3 = i4 + 1;
                    i4 = i3;
                } else {
                    i4++;
                    z2 = true;
                }
            }
        } else {
            if (str2.length() == 1) {
                char charAt = str2.charAt(0);
                i2 = 0;
                z = false;
                i3 = 0;
                int i7 = 1;
                while (i2 < length) {
                    if (str.charAt(i2) == charAt) {
                        if (z) {
                            int i8 = i7 + 1;
                            if (i7 == i) {
                                i2 = length;
                            }
                            arrayList.add(str.substring(i3, i2));
                            i7 = i8;
                            z = false;
                        }
                        i3 = i2 + 1;
                        i2 = i3;
                    } else {
                        i2++;
                        z = true;
                    }
                }
            } else {
                i2 = 0;
                z = false;
                i3 = 0;
                int i9 = 1;
                while (i2 < length) {
                    if (str2.indexOf(str.charAt(i2)) >= 0) {
                        if (z) {
                            int i10 = i9 + 1;
                            if (i9 == i) {
                                i2 = length;
                            }
                            arrayList.add(str.substring(i3, i2));
                            i9 = i10;
                            z = false;
                        }
                        i3 = i2 + 1;
                        i2 = i3;
                    } else {
                        i2++;
                        z = true;
                    }
                }
            }
            i4 = i2;
            z2 = z;
        }
        if (z2) {
            arrayList.add(str.substring(i3, i4));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String concatenate(Object[] objArr) {
        return join(objArr, (String) null);
    }

    public static String join(Object[] objArr) {
        return join(objArr, (String) null);
    }

    public static String join(Object[] objArr, char c2) {
        int length;
        if (objArr == null) {
            return null;
        }
        int length2 = objArr.length;
        if (length2 == 0) {
            length = 0;
        } else {
            Object obj = objArr[0];
            length = ((obj == null ? 16 : obj.toString().length()) + 1) * length2;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        for (int i = 0; i < length2; i++) {
            if (i > 0) {
                stringBuffer.append(c2);
            }
            Object obj2 = objArr[i];
            if (obj2 != null) {
                stringBuffer.append(obj2);
            }
        }
        return stringBuffer.toString();
    }

    public static String join(Object[] objArr, String str) {
        int length;
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int length2 = objArr.length;
        if (length2 == 0) {
            length = 0;
        } else {
            Object obj = objArr[0];
            length = ((obj == null ? 16 : obj.toString().length()) + (str != null ? str.length() : 0)) * length2;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        for (int i = 0; i < length2; i++) {
            if (str != null && i > 0) {
                stringBuffer.append(str);
            }
            Object obj2 = objArr[i];
            if (obj2 != null) {
                stringBuffer.append(obj2);
            }
        }
        return stringBuffer.toString();
    }

    public static String join(Iterator it, char c2) {
        if (it == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(256);
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null) {
                stringBuffer.append(next);
            }
            if (it.hasNext()) {
                stringBuffer.append(c2);
            }
        }
        return stringBuffer.toString();
    }

    public static String join(Iterator it, String str) {
        if (it == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(256);
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null) {
                stringBuffer.append(next);
            }
            if (str != null && it.hasNext()) {
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    public static String deleteSpaces(String str) {
        if (str == null) {
            return null;
        }
        return CharSetUtils.delete(str, " \t\r\n\b");
    }

    public static String deleteWhitespace(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                stringBuffer.append(str.charAt(i));
            }
        }
        return stringBuffer.toString();
    }

    public static String replaceOnce(String str, String str2, String str3) {
        return replace(str, str2, str3, 1);
    }

    public static String replace(String str, String str2, String str3) {
        return replace(str, str2, str3, -1);
    }

    public static String replace(String str, String str2, String str3, int i) {
        if (str == null || str2 == null || str3 == null || str2.length() == 0 || i == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        int i2 = 0;
        do {
            int indexOf = str.indexOf(str2, i2);
            if (indexOf == -1) {
                break;
            }
            stringBuffer.append(str.substring(i2, indexOf)).append(str3);
            i2 = str2.length() + indexOf;
            i--;
        } while (i != 0);
        stringBuffer.append(str.substring(i2));
        return stringBuffer.toString();
    }

    public static String replaceChars(String str, char c2, char c3) {
        if (str == null) {
            return null;
        }
        return str.replace(c2, c3);
    }

    public static String replaceChars(String str, String str2, String str3) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int length2 = str2.length();
        boolean z = false;
        for (int i = 0; i < length2; i++) {
            char charAt = str2.charAt(i);
            if (str3 == null || i >= str3.length()) {
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    char c2 = charArray[i3];
                    if (c2 != charAt) {
                        charArray[i2] = c2;
                        i2++;
                    } else {
                        z = true;
                    }
                }
                length = i2;
            } else {
                for (int i4 = 0; i4 < length; i4++) {
                    if (charArray[i4] == charAt) {
                        charArray[i4] = str3.charAt(i);
                        z = true;
                    }
                }
            }
        }
        return !z ? str : new String(charArray, 0, length);
    }

    public static String overlayString(String str, String str2, int i, int i2) {
        return new StringBuffer((((str2.length() + i) + str.length()) - i2) + 1).append(str.substring(0, i)).append(str2).append(str.substring(i2)).toString();
    }

    public static String overlay(String str, String str2, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        int length = str.length();
        if (i < 0) {
            i = 0;
        }
        if (i > length) {
            i = length;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 > length) {
            i2 = length;
        }
        if (i > i2) {
            int i3 = i2;
            i2 = i;
            i = i3;
        }
        return new StringBuffer(((length + i) - i2) + str2.length() + 1).append(str.substring(0, i)).append(str2).append(str.substring(i2)).toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
        if (r5 == '\r') goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String chomp(java.lang.String r6) {
        /*
            if (r6 == 0) goto L40
            int r0 = r6.length()
            if (r0 != 0) goto L9
            goto L40
        L9:
            int r0 = r6.length()
            r1 = 0
            r2 = 10
            r3 = 1
            r4 = 13
            if (r0 != r3) goto L22
            char r0 = r6.charAt(r1)
            if (r0 == r4) goto L1f
            if (r0 != r2) goto L1e
            goto L1f
        L1e:
            return r6
        L1f:
            java.lang.String r6 = ""
            return r6
        L22:
            int r0 = r6.length()
            int r3 = r0 + (-1)
            char r5 = r6.charAt(r3)
            if (r5 != r2) goto L39
            int r2 = r0 + (-2)
            char r2 = r6.charAt(r2)
            if (r2 != r4) goto L3b
            int r0 = r0 + (-2)
            goto L3c
        L39:
            if (r5 != r4) goto L3c
        L3b:
            r0 = r3
        L3c:
            java.lang.String r6 = r6.substring(r1, r0)
        L40:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang.StringUtils.chomp(java.lang.String):java.lang.String");
    }

    public static String chomp(String str, String str2) {
        return (str == null || str.length() == 0 || str2 == null || !str.endsWith(str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    public static String chompLast(String str) {
        return chompLast(str, "\n");
    }

    public static String chompLast(String str, String str2) {
        return (str.length() != 0 && str2.equals(str.substring(str.length() - str2.length()))) ? str.substring(0, str.length() - str2.length()) : str;
    }

    public static String getChomp(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(str2);
        if (lastIndexOf == str.length() - str2.length()) {
            return str2;
        }
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf);
        }
        return "";
    }

    public static String prechomp(String str, String str2) {
        int indexOf = str.indexOf(str2);
        return indexOf != -1 ? str.substring(indexOf + str2.length()) : str;
    }

    public static String getPrechomp(String str, String str2) {
        int indexOf = str.indexOf(str2);
        if (indexOf != -1) {
            return str.substring(0, indexOf + str2.length());
        }
        return "";
    }

    public static String chop(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i = length - 1;
        String substring = str.substring(0, i);
        if (str.charAt(i) == '\n') {
            int i2 = length - 2;
            if (substring.charAt(i2) == '\r') {
                return substring.substring(0, i2);
            }
        }
        return substring;
    }

    public static String chopNewline(String str) {
        int length = str.length();
        int i = length - 1;
        if (i <= 0) {
            return "";
        }
        if (str.charAt(i) == '\n') {
            length = str.charAt(length + (-2)) == '\r' ? length - 2 : i;
        }
        return str.substring(0, length);
    }

    public static String escape(String str) {
        return StringEscapeUtils.escapeJava(str);
    }

    public static String repeat(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i <= 0) {
            return "";
        }
        int length = str.length();
        if (i == 1 || length == 0) {
            return str;
        }
        if (length != 1 || i > 8192) {
            int i2 = length * i;
            if (length == 1) {
                char charAt = str.charAt(0);
                char[] cArr = new char[i2];
                for (int i3 = i - 1; i3 >= 0; i3--) {
                    cArr[i3] = charAt;
                }
                return new String(cArr);
            } else if (length == 2) {
                char charAt2 = str.charAt(0);
                char charAt3 = str.charAt(1);
                char[] cArr2 = new char[i2];
                for (int i4 = (i * 2) - 2; i4 >= 0; i4 -= 2) {
                    cArr2[i4] = charAt2;
                    cArr2[i4 + 1] = charAt3;
                }
                return new String(cArr2);
            } else {
                StringBuffer stringBuffer = new StringBuffer(i2);
                for (int i5 = 0; i5 < i; i5++) {
                    stringBuffer.append(str);
                }
                return stringBuffer.toString();
            }
        }
        return padding(i, str.charAt(0));
    }

    private static String padding(int i, char c2) {
        String str = PADDING[c2];
        if (str == null) {
            str = String.valueOf(c2);
        }
        while (str.length() < i) {
            str = str.concat(str);
        }
        PADDING[c2] = str;
        return str.substring(0, i);
    }

    public static String rightPad(String str, int i) {
        return rightPad(str, i, ' ');
    }

    public static String rightPad(String str, int i, char c2) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        if (length <= 0) {
            return str;
        }
        if (length > 8192) {
            return rightPad(str, i, String.valueOf(c2));
        }
        return str.concat(padding(length, c2));
    }

    public static String rightPad(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        str2 = (str2 == null || str2.length() == 0) ? " " : " ";
        int length = str2.length();
        int length2 = i - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length != 1 || length2 > 8192) {
            if (length2 == length) {
                return str.concat(str2);
            }
            if (length2 < length) {
                return str.concat(str2.substring(0, length2));
            }
            char[] cArr = new char[length2];
            char[] charArray = str2.toCharArray();
            for (int i2 = 0; i2 < length2; i2++) {
                cArr[i2] = charArray[i2 % length];
            }
            return str.concat(new String(cArr));
        }
        return rightPad(str, i, str2.charAt(0));
    }

    public static String leftPad(String str, int i) {
        return leftPad(str, i, ' ');
    }

    public static String leftPad(String str, int i, char c2) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        if (length <= 0) {
            return str;
        }
        if (length > 8192) {
            return leftPad(str, i, String.valueOf(c2));
        }
        return padding(length, c2).concat(str);
    }

    public static String leftPad(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        str2 = (str2 == null || str2.length() == 0) ? " " : " ";
        int length = str2.length();
        int length2 = i - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length != 1 || length2 > 8192) {
            if (length2 == length) {
                return str2.concat(str);
            }
            if (length2 < length) {
                return str2.substring(0, length2).concat(str);
            }
            char[] cArr = new char[length2];
            char[] charArray = str2.toCharArray();
            for (int i2 = 0; i2 < length2; i2++) {
                cArr[i2] = charArray[i2 % length];
            }
            return new String(cArr).concat(str);
        }
        return leftPad(str, i, str2.charAt(0));
    }

    public static String center(String str, int i) {
        return center(str, i, ' ');
    }

    public static String center(String str, int i, char c2) {
        int length;
        int length2;
        return (str == null || i <= 0 || (length2 = i - (length = str.length())) <= 0) ? str : rightPad(leftPad(str, length + (length2 / 2), c2), i, c2);
    }

    public static String center(String str, int i, String str2) {
        if (str == null || i <= 0) {
            return str;
        }
        str2 = (str2 == null || str2.length() == 0) ? " " : " ";
        int length = str.length();
        int i2 = i - length;
        return i2 <= 0 ? str : rightPad(leftPad(str, length + (i2 / 2), str2), i, str2);
    }

    public static String upperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    public static String lowerCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    public static String capitalize(String str) {
        int length;
        return (str == null || (length = str.length()) == 0) ? str : new StringBuffer(length).append(Character.toTitleCase(str.charAt(0))).append(str.substring(1)).toString();
    }

    public static String capitalise(String str) {
        return capitalize(str);
    }

    public static String uncapitalize(String str) {
        int length;
        return (str == null || (length = str.length()) == 0) ? str : new StringBuffer(length).append(Character.toLowerCase(str.charAt(0))).append(str.substring(1)).toString();
    }

    public static String uncapitalise(String str) {
        return uncapitalize(str);
    }

    public static String swapCase(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                charAt = Character.toLowerCase(charAt);
            } else if (Character.isTitleCase(charAt)) {
                charAt = Character.toLowerCase(charAt);
            } else if (Character.isLowerCase(charAt)) {
                charAt = Character.toUpperCase(charAt);
            }
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }

    public static String capitaliseAllWords(String str) {
        return WordUtils.capitalize(str);
    }

    public static int countMatches(String str, String str2) {
        int i = 0;
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            int indexOf = str.indexOf(str2, i);
            if (indexOf == -1) {
                return i2;
            }
            i2++;
            i = indexOf + str2.length();
        }
    }

    public static boolean isAlpha(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphaSpace(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(str.charAt(i)) && str.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumeric(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumericSpace(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(str.charAt(i)) && str.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isNumeric(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNumericSpace(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i)) && str.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String defaultString(String str) {
        return str == null ? "" : str;
    }

    public static String reverse(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuffer(str).reverse().toString();
    }

    public static String reverseDelimited(String str, char c2) {
        if (str == null) {
            return null;
        }
        String[] split = split(str, c2);
        ArrayUtils.reverse(split);
        return join(split, c2);
    }

    public static String reverseDelimitedString(String str, String str2) {
        if (str == null) {
            return null;
        }
        String[] split = split(str, str2);
        ArrayUtils.reverse(split);
        if (str2 == null) {
            return join((Object[]) split, ' ');
        }
        return join(split, str2);
    }

    public static String abbreviate(String str, int i) {
        return abbreviate(str, 0, i);
    }

    public static String abbreviate(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 4) {
            throw new IllegalArgumentException("Minimum abbreviation width is 4");
        }
        if (str.length() <= i2) {
            return str;
        }
        if (i > str.length()) {
            i = str.length();
        }
        int i3 = i2 - 3;
        if (str.length() - i < i3) {
            i = str.length() - i3;
        }
        if (i <= 4) {
            return new StringBuffer().append(str.substring(0, i3)).append(APSSharedUtil.TRUNCATE_SEPARATOR).toString();
        }
        if (i2 < 7) {
            throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
        }
        if (i + i3 < str.length()) {
            return new StringBuffer(APSSharedUtil.TRUNCATE_SEPARATOR).append(abbreviate(str.substring(i), i3)).toString();
        }
        return new StringBuffer(APSSharedUtil.TRUNCATE_SEPARATOR).append(str.substring(str.length() - i3)).toString();
    }

    public static String difference(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        int indexOfDifference = indexOfDifference(str, str2);
        if (indexOfDifference == -1) {
            return "";
        }
        return str2.substring(indexOfDifference);
    }

    public static int indexOfDifference(String str, String str2) {
        if (str == str2) {
            return -1;
        }
        int i = 0;
        if (str != null && str2 != null) {
            while (i < str.length() && i < str2.length() && str.charAt(i) == str2.charAt(i)) {
                i++;
            }
            if (i >= str2.length() && i >= str.length()) {
                return -1;
            }
        }
        return i;
    }

    public static int getLevenshteinDistance(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int length = str.length();
        int length2 = str2.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        int i = 0;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, length + 1, length2 + 1);
        for (int i2 = 0; i2 <= length; i2++) {
            iArr[i2][0] = i2;
        }
        for (int i3 = 0; i3 <= length2; i3++) {
            iArr[0][i3] = i3;
        }
        int i4 = 1;
        while (i4 <= length) {
            int i5 = i4 - 1;
            char charAt = str.charAt(i5);
            int i6 = 1;
            while (i6 <= length2) {
                int i7 = i6 - 1;
                int i8 = charAt == str2.charAt(i7) ? i : 1;
                int[] iArr2 = iArr[i4];
                int[] iArr3 = iArr[i5];
                iArr2[i6] = min(iArr3[i6] + 1, iArr2[i7] + 1, iArr3[i7] + i8);
                i6++;
                i = 0;
            }
            i4++;
            i = 0;
        }
        return iArr[length][length2];
    }
}
