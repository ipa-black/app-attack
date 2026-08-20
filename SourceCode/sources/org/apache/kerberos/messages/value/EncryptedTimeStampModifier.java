package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class EncryptedTimeStampModifier {
    private int microSecond;
    private KerberosTime timeStamp;

    public EncryptedTimeStamp getEncryptedTimestamp() {
        return new EncryptedTimeStamp(this.timeStamp, this.microSecond);
    }

    public void setKerberosTime(KerberosTime kerberosTime) {
        this.timeStamp = kerberosTime;
    }

    public void setMicroSecond(int i) {
        this.microSecond = i;
    }
}
