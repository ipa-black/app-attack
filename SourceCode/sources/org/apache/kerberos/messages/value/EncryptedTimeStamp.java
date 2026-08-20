package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class EncryptedTimeStamp {
    private int microSeconds;
    private KerberosTime timeStamp;

    public EncryptedTimeStamp(KerberosTime kerberosTime, int i) {
        this.timeStamp = kerberosTime;
        this.microSeconds = i;
    }

    public KerberosTime getTimeStamp() {
        return this.timeStamp;
    }

    public int getMicroSeconds() {
        return this.microSeconds;
    }
}
