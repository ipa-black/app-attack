package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class TicketFlags extends Options {
    public static final int FORWARDABLE = 1;
    public static final int FORWARDED = 2;
    public static final int HW_AUTHENT = 11;
    public static final int INITIAL = 9;
    public static final int INVALID = 7;
    public static final int MAX_VALUE = 32;
    public static final int MAY_POSTDATE = 5;
    public static final int OK_AS_DELEGATE = 13;
    public static final int POSTDATED = 6;
    public static final int PRE_AUTHENT = 10;
    public static final int PROXIABLE = 3;
    public static final int PROXY = 4;
    public static final int RENEWABLE = 8;
    public static final int RESERVED = 0;
    public static final int TRANSITED_POLICY_CHECKED = 12;

    public TicketFlags() {
        super(32);
    }

    public TicketFlags(byte[] bArr) {
        super(32);
        setBytes(bArr);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (get(1)) {
            stringBuffer.append("FORWARDABLE ");
        }
        if (get(2)) {
            stringBuffer.append("FORWARDED ");
        }
        if (get(3)) {
            stringBuffer.append("PROXIABLE ");
        }
        if (get(4)) {
            stringBuffer.append("PROXY ");
        }
        if (get(5)) {
            stringBuffer.append("MAY_POSTDATE ");
        }
        if (get(6)) {
            stringBuffer.append("POSTDATED ");
        }
        if (get(7)) {
            stringBuffer.append("INVALID ");
        }
        if (get(8)) {
            stringBuffer.append("RENEWABLE ");
        }
        if (get(9)) {
            stringBuffer.append("INITIAL ");
        }
        if (get(10)) {
            stringBuffer.append("PRE_AUTHENT ");
        }
        if (get(11)) {
            stringBuffer.append("HW_AUTHENT ");
        }
        if (get(12)) {
            stringBuffer.append("TRANSITED_POLICY_CHECKED ");
        }
        if (get(13)) {
            stringBuffer.append("OPTS_OK_AS_DELEGATE ");
        }
        return stringBuffer.toString().trim();
    }
}
