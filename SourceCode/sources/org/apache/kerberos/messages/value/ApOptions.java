package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class ApOptions extends Options {
    public static final int MAX_VALUE = 32;
    public static final int MUTUAL_REQUIRED = 2;
    public static final int RESERVED = 0;
    public static final int USE_SESSION_KEY = 1;

    public ApOptions() {
        super(32);
    }

    public ApOptions(byte[] bArr) {
        super(32);
        setBytes(bArr);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (get(2)) {
            stringBuffer.append("MUTUAL_REQUIRED ");
        }
        if (get(0)) {
            stringBuffer.append("RESERVED ");
        }
        if (get(1)) {
            stringBuffer.append("USE_SESSION_KEY ");
        }
        return stringBuffer.toString().trim();
    }
}
