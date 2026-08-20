package org.apache.kerberos.crypto.encryption;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class CipherType implements Comparable {
    public static final CipherType AES128;
    public static final CipherType DES;
    public static final CipherType DES3;
    public static final CipherType NULL;
    public static final List VALUES;
    private static int fNextOrdinal;
    private static final CipherType[] fValues;
    private final String fName;
    private final int fOrdinal;

    static {
        CipherType cipherType = new CipherType("null");
        NULL = cipherType;
        CipherType cipherType2 = new CipherType("DES");
        DES = cipherType2;
        CipherType cipherType3 = new CipherType("DES3");
        DES3 = cipherType3;
        CipherType cipherType4 = new CipherType("AES128");
        AES128 = cipherType4;
        fNextOrdinal = 0;
        CipherType[] cipherTypeArr = {cipherType, cipherType2, cipherType3, cipherType4};
        fValues = cipherTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(cipherTypeArr));
    }

    public String toString() {
        return this.fName;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.fOrdinal - ((CipherType) obj).fOrdinal;
    }

    public CipherType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            CipherType[] cipherTypeArr = fValues;
            if (i2 < cipherTypeArr.length) {
                CipherType cipherType = cipherTypeArr[i2];
                if (cipherType.fOrdinal == i) {
                    return cipherType;
                }
                i2++;
            } else {
                return NULL;
            }
        }
    }

    private CipherType(String str) {
        int i = fNextOrdinal;
        fNextOrdinal = i + 1;
        this.fOrdinal = i;
        this.fName = str;
    }
}
