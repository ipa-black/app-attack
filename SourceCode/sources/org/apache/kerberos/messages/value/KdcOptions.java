package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class KdcOptions extends Options {
    public static final int ALLOW_POSTDATE = 5;
    public static final int DISABLE_TRANSISTED_CHECKED = 26;
    public static final int ENC_TKT_IN_SKEY = 28;
    public static final int FORWARDABLE = 1;
    public static final int FORWARDED = 2;
    public static final int MAX_VALUE = 32;
    public static final int POSTDATED = 6;
    public static final int PROXIABLE = 3;
    public static final int PROXY = 4;
    public static final int RENEW = 30;
    public static final int RENEWABLE = 8;
    public static final int RENEWABLE_OK = 27;
    public static final int RESERVED = 0;
    public static final int UNUSED10 = 10;
    public static final int UNUSED11 = 11;
    public static final int UNUSED12 = 12;
    public static final int UNUSED13 = 13;
    public static final int UNUSED7 = 7;
    public static final int UNUSED9 = 9;
    public static final int VALIDATE = 31;

    public KdcOptions() {
        super(32);
    }

    public KdcOptions(byte[] bArr) {
        super(32);
        setBytes(bArr);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (get(5)) {
            stringBuffer.append("ALLOW_POSTDATE ");
        }
        if (get(26)) {
            stringBuffer.append("DISABLE_TRANSISTED_CHECKED ");
        }
        if (get(28)) {
            stringBuffer.append("ENC_TKT_IN_SKEY ");
        }
        if (get(1)) {
            stringBuffer.append("FORWARDABLE ");
        }
        if (get(2)) {
            stringBuffer.append("FORWARDED ");
        }
        if (get(6)) {
            stringBuffer.append("POSTDATED ");
        }
        if (get(3)) {
            stringBuffer.append("PROXIABLE ");
        }
        if (get(4)) {
            stringBuffer.append("PROXY ");
        }
        if (get(30)) {
            stringBuffer.append("RENEW ");
        }
        if (get(8)) {
            stringBuffer.append("RENEWABLE ");
        }
        if (get(27)) {
            stringBuffer.append("RENEWABLE_OK ");
        }
        if (get(0)) {
            stringBuffer.append("RESERVED ");
        }
        if (get(31)) {
            stringBuffer.append("VALIDATE ");
        }
        return stringBuffer.toString().trim();
    }
}
