package org.apache.kerberos.messages.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class MessageComponentType implements Comparable {
    public static final MessageComponentType KRB_AUTHENTICATOR;
    public static final MessageComponentType KRB_ENC_AP_REP_PART;
    public static final MessageComponentType KRB_ENC_AS_REP_PART;
    public static final MessageComponentType KRB_ENC_KRB_CRED_PART;
    public static final MessageComponentType KRB_ENC_KRB_PRIV_PART;
    public static final MessageComponentType KRB_ENC_TGS_REP_PART;
    public static final MessageComponentType KRB_ENC_TKT_PART;
    public static final MessageComponentType KRB_TKT;
    public static final MessageComponentType NULL;
    public static final List VALUES;
    private static final MessageComponentType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        MessageComponentType messageComponentType = new MessageComponentType(0, "null");
        NULL = messageComponentType;
        MessageComponentType messageComponentType2 = new MessageComponentType(1, "ticket");
        KRB_TKT = messageComponentType2;
        MessageComponentType messageComponentType3 = new MessageComponentType(2, "authenticator");
        KRB_AUTHENTICATOR = messageComponentType3;
        MessageComponentType messageComponentType4 = new MessageComponentType(3, "encrypted ticket part");
        KRB_ENC_TKT_PART = messageComponentType4;
        MessageComponentType messageComponentType5 = new MessageComponentType(25, "encrypted initial authentication part");
        KRB_ENC_AS_REP_PART = messageComponentType5;
        MessageComponentType messageComponentType6 = new MessageComponentType(26, "encrypted TGS request part");
        KRB_ENC_TGS_REP_PART = messageComponentType6;
        MessageComponentType messageComponentType7 = new MessageComponentType(27, "encrypted application request part");
        KRB_ENC_AP_REP_PART = messageComponentType7;
        MessageComponentType messageComponentType8 = new MessageComponentType(28, "encrypted application message part");
        KRB_ENC_KRB_PRIV_PART = messageComponentType8;
        MessageComponentType messageComponentType9 = new MessageComponentType(29, "encrypted credentials forward part");
        KRB_ENC_KRB_CRED_PART = messageComponentType9;
        MessageComponentType[] messageComponentTypeArr = {messageComponentType, messageComponentType2, messageComponentType3, messageComponentType4, messageComponentType5, messageComponentType6, messageComponentType7, messageComponentType8, messageComponentType9};
        fValues = messageComponentTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(messageComponentTypeArr));
    }

    public String toString() {
        return new StringBuffer().append(this._fName).append(" (").append(this._fOrdinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((MessageComponentType) obj)._fOrdinal;
    }

    public static MessageComponentType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            MessageComponentType[] messageComponentTypeArr = fValues;
            if (i2 < messageComponentTypeArr.length) {
                MessageComponentType messageComponentType = messageComponentTypeArr[i2];
                if (messageComponentType._fOrdinal == i) {
                    return messageComponentType;
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

    private MessageComponentType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
