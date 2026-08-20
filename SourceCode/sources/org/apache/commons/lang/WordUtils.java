package org.apache.commons.lang;
/* loaded from: classes5.dex */
public class WordUtils {
    public static String wrap(String str, int i) {
        return wrap(str, i, null, false);
    }

    public static String wrap(String str, int i, String str2, boolean z) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = SystemUtils.LINE_SEPARATOR;
        }
        if (i < 1) {
            i = 1;
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 32);
        int i2 = 0;
        while (length - i2 > i) {
            if (str.charAt(i2) == ' ') {
                i2++;
            } else {
                int i3 = i + i2;
                int lastIndexOf = str.lastIndexOf(32, i3);
                if (lastIndexOf >= i2) {
                    stringBuffer.append(str.substring(i2, lastIndexOf));
                    stringBuffer.append(str2);
                    i2 = lastIndexOf + 1;
                } else {
                    if (z) {
                        stringBuffer.append(str.substring(i2, i3));
                        stringBuffer.append(str2);
                    } else {
                        int indexOf = str.indexOf(32, i3);
                        if (indexOf >= 0) {
                            stringBuffer.append(str.substring(i2, indexOf));
                            stringBuffer.append(str2);
                            i3 = indexOf + 1;
                        } else {
                            stringBuffer.append(str.substring(i2));
                            i2 = length;
                        }
                    }
                    i2 = i3;
                }
            }
        }
        stringBuffer.append(str.substring(i2));
        return stringBuffer.toString();
    }

    public static String capitalize(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isWhitespace(charAt)) {
                stringBuffer.append(charAt);
                z = true;
            } else if (z) {
                stringBuffer.append(Character.toTitleCase(charAt));
                z = false;
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String capitalizeFully(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isWhitespace(charAt)) {
                stringBuffer.append(charAt);
                z = true;
            } else if (z) {
                stringBuffer.append(Character.toTitleCase(charAt));
                z = false;
            } else {
                stringBuffer.append(Character.toLowerCase(charAt));
            }
        }
        return stringBuffer.toString();
    }

    public static String uncapitalize(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isWhitespace(charAt)) {
                stringBuffer.append(charAt);
                z = true;
            } else if (z) {
                stringBuffer.append(Character.toLowerCase(charAt));
                z = false;
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String swapCase(String str) {
        int length;
        char c2;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                c2 = Character.toLowerCase(charAt);
            } else if (Character.isTitleCase(charAt)) {
                c2 = Character.toLowerCase(charAt);
            } else if (!Character.isLowerCase(charAt)) {
                c2 = charAt;
            } else if (z) {
                c2 = Character.toTitleCase(charAt);
            } else {
                c2 = Character.toUpperCase(charAt);
            }
            stringBuffer.append(c2);
            z = Character.isWhitespace(charAt);
        }
        return stringBuffer.toString();
    }
}
