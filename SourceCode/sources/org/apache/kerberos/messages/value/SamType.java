package org.apache.kerberos.messages.value;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class SamType implements Comparable {
    public static final SamType PA_SAM_TYPE_APACHE;
    public static final SamType PA_SAM_TYPE_CRYPTOCARD;
    public static final SamType PA_SAM_TYPE_DIGI_PATH;
    public static final SamType PA_SAM_TYPE_ENIGMA;
    public static final SamType PA_SAM_TYPE_SECURID;
    public static final SamType PA_SAM_TYPE_SKEY;
    public static final SamType PA_SAM_TYPE_SKEY_K0;
    public static final List VALUES;
    private static final SamType[] values;
    private final String name;
    private final int ordinal;

    static {
        SamType samType = new SamType(1, "Enigma Logic");
        PA_SAM_TYPE_ENIGMA = samType;
        SamType samType2 = new SamType(2, "Digital Pathways");
        PA_SAM_TYPE_DIGI_PATH = samType2;
        SamType samType3 = new SamType(3, "S/key where KDC has key 0");
        PA_SAM_TYPE_SKEY_K0 = samType3;
        SamType samType4 = new SamType(4, "Traditional S/Key");
        PA_SAM_TYPE_SKEY = samType4;
        SamType samType5 = new SamType(5, "Security Dynamics");
        PA_SAM_TYPE_SECURID = samType5;
        SamType samType6 = new SamType(6, "CRYPTOCard");
        PA_SAM_TYPE_CRYPTOCARD = samType6;
        SamType samType7 = new SamType(7, "Apache Software Foundation");
        PA_SAM_TYPE_APACHE = samType7;
        SamType[] samTypeArr = {samType, samType2, samType3, samType4, samType5, samType6, samType7};
        values = samTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(samTypeArr));
    }

    private SamType(int i, String str) {
        this.ordinal = i;
        this.name = str;
    }

    public String toString() {
        return this.name;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.ordinal - ((SamType) obj).ordinal;
    }

    public static SamType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            SamType[] samTypeArr = values;
            if (i2 < samTypeArr.length) {
                SamType samType = samTypeArr[i2];
                if (samType.ordinal == i) {
                    return samType;
                }
                i2++;
            } else {
                return PA_SAM_TYPE_APACHE;
            }
        }
    }

    public int getOrdinal() {
        return this.ordinal;
    }
}
