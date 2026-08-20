package org.apache.kerberos.messages;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class MessageType implements Comparable {
    public static final MessageType ENC_AP_REP_PART;
    public static final MessageType ENC_PRIV_PART;
    public static final MessageType KRB_AP_REP;
    public static final MessageType KRB_AP_REQ;
    public static final MessageType KRB_AS_REP;
    public static final MessageType KRB_AS_REQ;
    public static final MessageType KRB_CRED;
    public static final MessageType KRB_ERROR;
    public static final MessageType KRB_PRIV;
    public static final MessageType KRB_SAFE;
    public static final MessageType KRB_TGS_REP;
    public static final MessageType KRB_TGS_REQ;
    public static final MessageType NULL;
    public static final List VALUES;
    private static final MessageType[] values;
    private final String name;
    private final int ordinal;

    static {
        MessageType messageType = new MessageType(0, "null");
        NULL = messageType;
        MessageType messageType2 = new MessageType(10, "initial authentication request");
        KRB_AS_REQ = messageType2;
        MessageType messageType3 = new MessageType(11, "initial authentication response");
        KRB_AS_REP = messageType3;
        MessageType messageType4 = new MessageType(12, "request for authentication based on TGT");
        KRB_TGS_REQ = messageType4;
        MessageType messageType5 = new MessageType(13, "response to authentication based on TGT");
        KRB_TGS_REP = messageType5;
        MessageType messageType6 = new MessageType(14, "application request");
        KRB_AP_REQ = messageType6;
        MessageType messageType7 = new MessageType(15, "application response");
        KRB_AP_REP = messageType7;
        MessageType messageType8 = new MessageType(20, "safe (checksummed) application message");
        KRB_SAFE = messageType8;
        MessageType messageType9 = new MessageType(21, "private (encrypted) application message");
        KRB_PRIV = messageType9;
        MessageType messageType10 = new MessageType(22, "private (encrypted) message to forward credentials");
        KRB_CRED = messageType10;
        MessageType messageType11 = new MessageType(27, "encrypted application reply part");
        ENC_AP_REP_PART = messageType11;
        MessageType messageType12 = new MessageType(28, "encrypted private message part");
        ENC_PRIV_PART = messageType12;
        MessageType messageType13 = new MessageType(30, "error response");
        KRB_ERROR = messageType13;
        MessageType[] messageTypeArr = {messageType, messageType2, messageType3, messageType4, messageType5, messageType6, messageType7, messageType8, messageType9, messageType10, messageType11, messageType12, messageType13};
        values = messageTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(messageTypeArr));
    }

    private MessageType(int i, String str) {
        this.ordinal = i;
        this.name = str;
    }

    public String toString() {
        return new StringBuffer().append(this.name).append(" (").append(this.ordinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.ordinal - ((MessageType) obj).ordinal;
    }

    public static MessageType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            MessageType[] messageTypeArr = values;
            if (i2 < messageTypeArr.length) {
                MessageType messageType = messageTypeArr[i2];
                if (messageType.ordinal == i) {
                    return messageType;
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
