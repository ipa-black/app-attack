package org.apache.kerberos.messages.components;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.Checksum;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class Authenticator {
    public static final int AUTHENTICATOR_VNO = 5;
    private AuthorizationData authorizationData;
    private Checksum checksum;
    private int clientMicroSecond;
    private KerberosPrincipal clientPrincipal;
    private KerberosTime clientTime;
    private int sequenceNumber;
    private EncryptionKey subSessionKey;
    private int versionNumber;

    public Authenticator(KerberosPrincipal kerberosPrincipal, Checksum checksum, int i, KerberosTime kerberosTime, EncryptionKey encryptionKey, int i2, AuthorizationData authorizationData) {
        this(5, kerberosPrincipal, checksum, i, kerberosTime, encryptionKey, i2, authorizationData);
    }

    public Authenticator(int i, KerberosPrincipal kerberosPrincipal, Checksum checksum, int i2, KerberosTime kerberosTime, EncryptionKey encryptionKey, int i3, AuthorizationData authorizationData) {
        this.versionNumber = i;
        this.clientPrincipal = kerberosPrincipal;
        this.checksum = checksum;
        this.clientMicroSecond = i2;
        this.clientTime = kerberosTime;
        this.subSessionKey = encryptionKey;
        this.sequenceNumber = i3;
        this.authorizationData = authorizationData;
    }

    public KerberosPrincipal getClientPrincipal() {
        return this.clientPrincipal;
    }

    public KerberosTime getClientTime() {
        return this.clientTime;
    }

    public int getClientMicroSecond() {
        return this.clientMicroSecond;
    }

    public AuthorizationData getAuthorizationData() {
        return this.authorizationData;
    }

    public Checksum getChecksum() {
        return this.checksum;
    }

    public int getSequenceNumber() {
        return this.sequenceNumber;
    }

    public EncryptionKey getSubSessionKey() {
        return this.subSessionKey;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }
}
