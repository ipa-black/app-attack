package org.apache.kerberos.crypto.encryption;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class EncryptionType implements Comparable {
    public static final EncryptionType DES3_CBC_MD5;
    public static final EncryptionType DES3_CBC_SHA1;
    public static final EncryptionType DES3_CBC_SHA1_KD;
    public static final EncryptionType DES_CBC_CRC;
    public static final EncryptionType DES_CBC_MD4;
    public static final EncryptionType DES_CBC_MD5;
    public static final EncryptionType DES_EDE3_CBC_ENV_OID;
    public static final EncryptionType DSAWITHSHA1_CMSOID;
    public static final EncryptionType MD5WITHRSAENCRYPTION_CMSOID;
    public static final EncryptionType NULL;
    public static final EncryptionType PK_CROSS;
    public static final EncryptionType RC2CBC_ENVOID;
    public static final EncryptionType RC4_HMAC;
    public static final EncryptionType RESERVED4;
    public static final EncryptionType RESERVED6;
    public static final EncryptionType RSAENCRYPTION_ENVOID;
    public static final EncryptionType RSAES_OAEP_ENV_OID;
    public static final EncryptionType SHA1WITHRSAENCRYPTION_CMSOID;
    public static final List VALUES;
    private static final EncryptionType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        EncryptionType encryptionType = new EncryptionType(0, "null");
        NULL = encryptionType;
        EncryptionType encryptionType2 = new EncryptionType(1, "DES-CBC-CRC");
        DES_CBC_CRC = encryptionType2;
        EncryptionType encryptionType3 = new EncryptionType(2, "DES-CBC-MD4");
        DES_CBC_MD4 = encryptionType3;
        EncryptionType encryptionType4 = new EncryptionType(3, "DES-CBC-MD5");
        DES_CBC_MD5 = encryptionType4;
        EncryptionType encryptionType5 = new EncryptionType(4, "RESERVED-4");
        RESERVED4 = encryptionType5;
        EncryptionType encryptionType6 = new EncryptionType(5, "DES3-CBC-MD5");
        DES3_CBC_MD5 = encryptionType6;
        EncryptionType encryptionType7 = new EncryptionType(6, "RESERVED-6");
        RESERVED6 = encryptionType7;
        EncryptionType encryptionType8 = new EncryptionType(7, "DES3-CBC-SHA1");
        DES3_CBC_SHA1 = encryptionType8;
        EncryptionType encryptionType9 = new EncryptionType(8, "DES3-CBC-SHA1-KD");
        DES3_CBC_SHA1_KD = encryptionType9;
        EncryptionType encryptionType10 = new EncryptionType(9, "DSA-with-SHA1-CMS-oid");
        DSAWITHSHA1_CMSOID = encryptionType10;
        EncryptionType encryptionType11 = new EncryptionType(10, "MD5-with-RSA-encryption-CMS-oid");
        MD5WITHRSAENCRYPTION_CMSOID = encryptionType11;
        EncryptionType encryptionType12 = new EncryptionType(11, "SHA1-with-RSA-encryption-CMS-oid");
        SHA1WITHRSAENCRYPTION_CMSOID = encryptionType12;
        EncryptionType encryptionType13 = new EncryptionType(12, "RC2-CBC-environment-oid");
        RC2CBC_ENVOID = encryptionType13;
        EncryptionType encryptionType14 = new EncryptionType(13, "RSA-encryption-environment-oid");
        RSAENCRYPTION_ENVOID = encryptionType14;
        EncryptionType encryptionType15 = new EncryptionType(14, "RSA-ES-OAEP-environment-oid");
        RSAES_OAEP_ENV_OID = encryptionType15;
        EncryptionType encryptionType16 = new EncryptionType(15, "DES-EDE3-CBC-environment-oid");
        DES_EDE3_CBC_ENV_OID = encryptionType16;
        EncryptionType encryptionType17 = new EncryptionType(16, "RC4-HMAC");
        RC4_HMAC = encryptionType17;
        EncryptionType encryptionType18 = new EncryptionType(17, "PK-cross");
        PK_CROSS = encryptionType18;
        EncryptionType[] encryptionTypeArr = {encryptionType, encryptionType2, encryptionType3, encryptionType4, encryptionType5, encryptionType6, encryptionType7, encryptionType8, encryptionType9, encryptionType10, encryptionType11, encryptionType12, encryptionType13, encryptionType14, encryptionType15, encryptionType16, encryptionType17, encryptionType18};
        fValues = encryptionTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(encryptionTypeArr));
    }

    public String toString() {
        return this._fName;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((EncryptionType) obj)._fOrdinal;
    }

    public static EncryptionType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            EncryptionType[] encryptionTypeArr = fValues;
            if (i2 < encryptionTypeArr.length) {
                EncryptionType encryptionType = encryptionTypeArr[i2];
                if (encryptionType._fOrdinal == i) {
                    return encryptionType;
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

    private EncryptionType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
