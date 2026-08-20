package org.apache.commons.lang;

import java.util.Random;
/* loaded from: classes5.dex */
public class RandomStringUtils {
    private static final Random RANDOM = new Random();

    public static String random(int i) {
        return random(i, false, false);
    }

    public static String randomAscii(int i) {
        return random(i, 32, 127, false, false);
    }

    public static String randomAlphabetic(int i) {
        return random(i, true, false);
    }

    public static String randomAlphanumeric(int i) {
        return random(i, true, true);
    }

    public static String randomNumeric(int i) {
        return random(i, false, true);
    }

    public static String random(int i, boolean z, boolean z2) {
        return random(i, 0, 0, z, z2);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2) {
        return random(i, i2, i3, z, z2, null, RANDOM);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2, char[] cArr) {
        return random(i, i2, i3, z, z2, cArr, RANDOM);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2, char[] cArr, Random random) {
        char c2;
        if (i == 0) {
            return "";
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("Requested random string length ").append(i).append(" is less than 0.").toString());
        }
        if (i2 == 0 && i3 == 0) {
            if (z || z2) {
                i3 = 123;
                i2 = 32;
            } else {
                i2 = 0;
                i3 = Integer.MAX_VALUE;
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = i3 - i2;
        while (true) {
            int i5 = i - 1;
            if (i != 0) {
                if (cArr == null) {
                    c2 = (char) (random.nextInt(i4) + i2);
                } else {
                    c2 = cArr[random.nextInt(i4) + i2];
                }
                if ((z && z2 && Character.isLetterOrDigit(c2)) || ((z && Character.isLetter(c2)) || ((z2 && Character.isDigit(c2)) || (!z && !z2)))) {
                    stringBuffer.append(c2);
                    i = i5;
                }
            } else {
                return stringBuffer.toString();
            }
        }
    }

    public static String random(int i, String str) {
        if (str == null) {
            return random(i, 0, 0, false, false, null, RANDOM);
        }
        return random(i, str.toCharArray());
    }

    public static String random(int i, char[] cArr) {
        if (cArr == null) {
            return random(i, 0, 0, false, false, null, RANDOM);
        }
        return random(i, 0, cArr.length, false, false, cArr, RANDOM);
    }
}
