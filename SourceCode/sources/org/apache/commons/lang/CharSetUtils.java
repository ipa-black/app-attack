package org.apache.commons.lang;
/* loaded from: classes5.dex */
public class CharSetUtils {
    public static CharSet evaluateSet(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        return new CharSet(strArr);
    }

    public static String squeeze(String str, String str2) {
        return (str == null || str.length() == 0 || str2 == null || str2.length() == 0) ? str : squeeze(str, new String[]{str2});
    }

    public static String squeeze(String str, String[] strArr) {
        if (str == null || str.length() == 0 || strArr == null || strArr.length == 0) {
            return str;
        }
        CharSet evaluateSet = evaluateSet(strArr);
        StringBuffer stringBuffer = new StringBuffer(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        char c2 = ' ';
        for (int i = 0; i < length; i++) {
            char c3 = charArray[i];
            if (!evaluateSet.contains(c3) || c3 != c2 || i == 0) {
                stringBuffer.append(c3);
                c2 = c3;
            }
        }
        return stringBuffer.toString();
    }

    public static int count(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return 0;
        }
        return count(str, new String[]{str2});
    }

    public static int count(String str, String[] strArr) {
        if (str == null || str.length() == 0 || strArr == null || strArr.length == 0) {
            return 0;
        }
        CharSet evaluateSet = evaluateSet(strArr);
        int i = 0;
        for (char c2 : str.toCharArray()) {
            if (evaluateSet.contains(c2)) {
                i++;
            }
        }
        return i;
    }

    public static String keep(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0 || str2 == null || str2.length() == 0) {
            return "";
        }
        return keep(str, new String[]{str2});
    }

    public static String keep(String str, String[] strArr) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0 || strArr == null || strArr.length == 0) {
            return "";
        }
        return modify(str, strArr, true);
    }

    public static String delete(String str, String str2) {
        return (str == null || str.length() == 0 || str2 == null || str2.length() == 0) ? str : delete(str, new String[]{str2});
    }

    public static String delete(String str, String[] strArr) {
        return (str == null || str.length() == 0 || strArr == null || strArr.length == 0) ? str : modify(str, strArr, false);
    }

    private static String modify(String str, String[] strArr, boolean z) {
        CharSet evaluateSet = evaluateSet(strArr);
        StringBuffer stringBuffer = new StringBuffer(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (evaluateSet.contains(charArray[i]) == z) {
                stringBuffer.append(charArray[i]);
            }
        }
        return stringBuffer.toString();
    }

    public static String translate(String str, String str2, String str3) {
        if (str == null || str.length() == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        char[] charArray = str.toCharArray();
        char[] charArray2 = str3.toCharArray();
        int length = charArray.length;
        int length2 = str3.length() - 1;
        for (int i = 0; i < length; i++) {
            int indexOf = str2.indexOf(charArray[i]);
            if (indexOf != -1) {
                if (indexOf > length2) {
                    indexOf = length2;
                }
                stringBuffer.append(charArray2[indexOf]);
            } else {
                stringBuffer.append(charArray[i]);
            }
        }
        return stringBuffer.toString();
    }
}
