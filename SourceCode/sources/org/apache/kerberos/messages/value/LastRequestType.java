package org.apache.kerberos.messages.value;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class LastRequestType implements Comparable {
    public static final LastRequestType NONE;
    public static final LastRequestType TIME_OF_INITIAL_REQ;
    public static final LastRequestType TIME_OF_INITIAL_TGT;
    public static final LastRequestType TIME_OF_LAST_RENEWAL;
    public static final LastRequestType TIME_OF_LAST_REQ;
    public static final LastRequestType TIME_OF_NEWEST_TGT;
    public static final LastRequestType TIME_OF_PASSWORD_EXP;
    public static final List VALUES;
    private static final LastRequestType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        LastRequestType lastRequestType = new LastRequestType(0, "none");
        NONE = lastRequestType;
        LastRequestType lastRequestType2 = new LastRequestType(1, "time of initial ticket");
        TIME_OF_INITIAL_TGT = lastRequestType2;
        LastRequestType lastRequestType3 = new LastRequestType(2, "time of initial request");
        TIME_OF_INITIAL_REQ = lastRequestType3;
        LastRequestType lastRequestType4 = new LastRequestType(3, "time of newest ticket");
        TIME_OF_NEWEST_TGT = lastRequestType4;
        LastRequestType lastRequestType5 = new LastRequestType(4, "time of last renewal");
        TIME_OF_LAST_RENEWAL = lastRequestType5;
        LastRequestType lastRequestType6 = new LastRequestType(5, "time of last request");
        TIME_OF_LAST_REQ = lastRequestType6;
        LastRequestType lastRequestType7 = new LastRequestType(6, "time of password expiration");
        TIME_OF_PASSWORD_EXP = lastRequestType7;
        LastRequestType[] lastRequestTypeArr = {lastRequestType, lastRequestType2, lastRequestType3, lastRequestType4, lastRequestType5, lastRequestType6, lastRequestType7};
        fValues = lastRequestTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(lastRequestTypeArr));
    }

    public String toString() {
        return new StringBuffer().append(this._fName).append(" (").append(this._fOrdinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((LastRequestType) obj)._fOrdinal;
    }

    public static LastRequestType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            LastRequestType[] lastRequestTypeArr = fValues;
            if (i2 < lastRequestTypeArr.length) {
                LastRequestType lastRequestType = lastRequestTypeArr[i2];
                if (lastRequestType._fOrdinal == i) {
                    return lastRequestType;
                }
                i2++;
            } else {
                return NONE;
            }
        }
    }

    public int getOrdinal() {
        return this._fOrdinal;
    }

    private LastRequestType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
