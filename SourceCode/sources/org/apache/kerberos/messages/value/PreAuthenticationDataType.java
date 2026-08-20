package org.apache.kerberos.messages.value;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class PreAuthenticationDataType implements Comparable {
    public static final PreAuthenticationDataType NULL;
    public static final PreAuthenticationDataType PA_ASF3_SALT;
    public static final PreAuthenticationDataType PA_CYBERSAFE_SECUREID;
    public static final PreAuthenticationDataType PA_ENCTYPE_INFO;
    public static final PreAuthenticationDataType PA_ENC_TIMESTAMP;
    public static final PreAuthenticationDataType PA_ENC_UNIX_TIME;
    public static final PreAuthenticationDataType PA_GET_FROM_TYPED_DATA;
    public static final PreAuthenticationDataType PA_OSF_DCE;
    public static final PreAuthenticationDataType PA_PK_AS_REP;
    public static final PreAuthenticationDataType PA_PK_AS_REQ;
    public static final PreAuthenticationDataType PA_PW_SALT;
    public static final PreAuthenticationDataType PA_SANDIA_SECUREID;
    public static final PreAuthenticationDataType PA_SESAME;
    public static final PreAuthenticationDataType PA_TGS_REQ;
    public static final PreAuthenticationDataType PA_USE_SPECIFIED_KVNO;
    public static final PreAuthenticationDataType SAM_CHALLENGE;
    public static final PreAuthenticationDataType SAM_REDIRECT;
    public static final PreAuthenticationDataType SAM_RESPONSE;
    public static final List VALUES;
    private static final PreAuthenticationDataType[] values;
    private final String name;
    private final int ordinal;

    static {
        PreAuthenticationDataType preAuthenticationDataType = new PreAuthenticationDataType(0, "null");
        NULL = preAuthenticationDataType;
        PreAuthenticationDataType preAuthenticationDataType2 = new PreAuthenticationDataType(1, "TGS Request.");
        PA_TGS_REQ = preAuthenticationDataType2;
        PreAuthenticationDataType preAuthenticationDataType3 = new PreAuthenticationDataType(2, "Encrypted timestamp.");
        PA_ENC_TIMESTAMP = preAuthenticationDataType3;
        PreAuthenticationDataType preAuthenticationDataType4 = new PreAuthenticationDataType(3, "password salt");
        PA_PW_SALT = preAuthenticationDataType4;
        PreAuthenticationDataType preAuthenticationDataType5 = new PreAuthenticationDataType(5, "enc unix time");
        PA_ENC_UNIX_TIME = preAuthenticationDataType5;
        PreAuthenticationDataType preAuthenticationDataType6 = new PreAuthenticationDataType(6, "sandia secureid");
        PA_SANDIA_SECUREID = preAuthenticationDataType6;
        PreAuthenticationDataType preAuthenticationDataType7 = new PreAuthenticationDataType(7, TtmlNode.TEXT_EMPHASIS_MARK_SESAME);
        PA_SESAME = preAuthenticationDataType7;
        PreAuthenticationDataType preAuthenticationDataType8 = new PreAuthenticationDataType(8, "OSF DCE");
        PA_OSF_DCE = preAuthenticationDataType8;
        PreAuthenticationDataType preAuthenticationDataType9 = new PreAuthenticationDataType(9, "cybersafe secureid");
        PA_CYBERSAFE_SECUREID = preAuthenticationDataType9;
        PreAuthenticationDataType preAuthenticationDataType10 = new PreAuthenticationDataType(10, "ASF3 salt");
        PA_ASF3_SALT = preAuthenticationDataType10;
        PreAuthenticationDataType preAuthenticationDataType11 = new PreAuthenticationDataType(11, "Encryption info.");
        PA_ENCTYPE_INFO = preAuthenticationDataType11;
        PreAuthenticationDataType preAuthenticationDataType12 = new PreAuthenticationDataType(12, "SAM challenge.");
        SAM_CHALLENGE = preAuthenticationDataType12;
        PreAuthenticationDataType preAuthenticationDataType13 = new PreAuthenticationDataType(13, "SAM response.");
        SAM_RESPONSE = preAuthenticationDataType13;
        PreAuthenticationDataType preAuthenticationDataType14 = new PreAuthenticationDataType(14, "PK as request");
        PA_PK_AS_REQ = preAuthenticationDataType14;
        PreAuthenticationDataType preAuthenticationDataType15 = new PreAuthenticationDataType(15, "PK as response");
        PA_PK_AS_REP = preAuthenticationDataType15;
        PreAuthenticationDataType preAuthenticationDataType16 = new PreAuthenticationDataType(20, "use specified key version");
        PA_USE_SPECIFIED_KVNO = preAuthenticationDataType16;
        PreAuthenticationDataType preAuthenticationDataType17 = new PreAuthenticationDataType(21, "SAM redirect.");
        SAM_REDIRECT = preAuthenticationDataType17;
        PreAuthenticationDataType preAuthenticationDataType18 = new PreAuthenticationDataType(22, "Get from typed data");
        PA_GET_FROM_TYPED_DATA = preAuthenticationDataType18;
        PreAuthenticationDataType[] preAuthenticationDataTypeArr = {preAuthenticationDataType, preAuthenticationDataType2, preAuthenticationDataType3, preAuthenticationDataType4, preAuthenticationDataType5, preAuthenticationDataType6, preAuthenticationDataType7, preAuthenticationDataType8, preAuthenticationDataType9, preAuthenticationDataType10, preAuthenticationDataType11, preAuthenticationDataType12, preAuthenticationDataType13, preAuthenticationDataType14, preAuthenticationDataType15, preAuthenticationDataType16, preAuthenticationDataType17, preAuthenticationDataType18};
        values = preAuthenticationDataTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(preAuthenticationDataTypeArr));
    }

    private PreAuthenticationDataType(int i, String str) {
        this.ordinal = i;
        this.name = str;
    }

    public String toString() {
        return new StringBuffer().append(this.name).append(" (").append(this.ordinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.ordinal - ((PreAuthenticationDataType) obj).ordinal;
    }

    public static PreAuthenticationDataType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            PreAuthenticationDataType[] preAuthenticationDataTypeArr = values;
            if (i2 < preAuthenticationDataTypeArr.length) {
                PreAuthenticationDataType preAuthenticationDataType = preAuthenticationDataTypeArr[i2];
                if (preAuthenticationDataType.ordinal == i) {
                    return preAuthenticationDataType;
                }
                i2++;
            } else {
                return NULL;
            }
        }
    }

    public int getOrdinal() {
        return this.ordinal;
    }
}
