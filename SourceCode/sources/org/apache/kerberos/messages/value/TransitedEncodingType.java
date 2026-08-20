package org.apache.kerberos.messages.value;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class TransitedEncodingType implements Comparable {
    public static final TransitedEncodingType DOMAIN_X500_COMPRESS;
    public static final TransitedEncodingType NULL;
    public static final List VALUES;
    private static final TransitedEncodingType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        TransitedEncodingType transitedEncodingType = new TransitedEncodingType(0, "null");
        NULL = transitedEncodingType;
        TransitedEncodingType transitedEncodingType2 = new TransitedEncodingType(1, "Domain X500 compress");
        DOMAIN_X500_COMPRESS = transitedEncodingType2;
        TransitedEncodingType[] transitedEncodingTypeArr = {transitedEncodingType, transitedEncodingType2};
        fValues = transitedEncodingTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(transitedEncodingTypeArr));
    }

    public String toString() {
        return new StringBuffer().append(this._fName).append(" (").append(this._fOrdinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((TransitedEncodingType) obj)._fOrdinal;
    }

    public static TransitedEncodingType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            TransitedEncodingType[] transitedEncodingTypeArr = fValues;
            if (i2 < transitedEncodingTypeArr.length) {
                TransitedEncodingType transitedEncodingType = transitedEncodingTypeArr[i2];
                if (transitedEncodingType._fOrdinal == i) {
                    return transitedEncodingType;
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

    private TransitedEncodingType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
