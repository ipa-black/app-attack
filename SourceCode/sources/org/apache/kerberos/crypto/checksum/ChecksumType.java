package org.apache.kerberos.crypto.checksum;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class ChecksumType implements Comparable {
    public static final ChecksumType CRC32;
    public static final ChecksumType DES_MAC;
    public static final ChecksumType DES_MAC_K;
    public static final ChecksumType HMAC_SHA1_DES3;
    public static final ChecksumType NULL;
    public static final ChecksumType RSA_MD4;
    public static final ChecksumType RSA_MD4_DES;
    public static final ChecksumType RSA_MD4_DES_K;
    public static final ChecksumType RSA_MD5;
    public static final ChecksumType RSA_MD5_DES;
    public static final ChecksumType RSA_MD5_DES3;
    public static final ChecksumType SHA1;
    public static final ChecksumType UNKNOWN11;
    public static final List VALUES;
    private static final ChecksumType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        ChecksumType checksumType = new ChecksumType(0, "null");
        NULL = checksumType;
        ChecksumType checksumType2 = new ChecksumType(1, "CRC32");
        CRC32 = checksumType2;
        ChecksumType checksumType3 = new ChecksumType(2, "RSA MD4");
        RSA_MD4 = checksumType3;
        ChecksumType checksumType4 = new ChecksumType(3, "RSA MD4 DES");
        RSA_MD4_DES = checksumType4;
        ChecksumType checksumType5 = new ChecksumType(4, "DES MAC");
        DES_MAC = checksumType5;
        ChecksumType checksumType6 = new ChecksumType(5, "DES MAC K");
        DES_MAC_K = checksumType6;
        ChecksumType checksumType7 = new ChecksumType(6, "RSA MD4 DES K");
        RSA_MD4_DES_K = checksumType7;
        ChecksumType checksumType8 = new ChecksumType(7, "RSA MD5");
        RSA_MD5 = checksumType8;
        ChecksumType checksumType9 = new ChecksumType(8, "RSA MD5 DES");
        RSA_MD5_DES = checksumType9;
        ChecksumType checksumType10 = new ChecksumType(9, "RSA MD5 DES3");
        RSA_MD5_DES3 = checksumType10;
        ChecksumType checksumType11 = new ChecksumType(10, "SHA1");
        SHA1 = checksumType11;
        ChecksumType checksumType12 = new ChecksumType(11, "UNKNOWN 11");
        UNKNOWN11 = checksumType12;
        ChecksumType checksumType13 = new ChecksumType(12, "HMAC SHA1 DES3");
        HMAC_SHA1_DES3 = checksumType13;
        ChecksumType[] checksumTypeArr = {checksumType, checksumType2, checksumType3, checksumType4, checksumType5, checksumType6, checksumType7, checksumType8, checksumType9, checksumType10, checksumType11, checksumType12, checksumType13};
        fValues = checksumTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(checksumTypeArr));
    }

    public String toString() {
        return this._fName;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((ChecksumType) obj)._fOrdinal;
    }

    public static ChecksumType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            ChecksumType[] checksumTypeArr = fValues;
            if (i2 < checksumTypeArr.length) {
                ChecksumType checksumType = checksumTypeArr[i2];
                if (checksumType._fOrdinal == i) {
                    return checksumType;
                }
                i2++;
            } else {
                return NULL;
            }
        }
    }

    public int getOrdinal() {
        return this._fOrdinal;
    }

    private ChecksumType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
