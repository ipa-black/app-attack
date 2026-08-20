package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.Checksum;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosPrincipalModifier;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.PrincipalName;
/* loaded from: classes5.dex */
public class AuthenticatorModifier {
    private AuthorizationData _authorizationData;
    private Checksum _checksum;
    private int _clientMicroSecond;
    private KerberosPrincipalModifier _clientModifier = new KerberosPrincipalModifier();
    private KerberosTime _clientTime;
    private int _sequenceNumber;
    private EncryptionKey _subSessionKey;
    private int _versionNumber;

    public Authenticator getAuthenticator() {
        return new Authenticator(this._versionNumber, this._clientModifier.getKerberosPrincipal(), this._checksum, this._clientMicroSecond, this._clientTime, this._subSessionKey, this._sequenceNumber, this._authorizationData);
    }

    public void setVersionNumber(int i) {
        this._versionNumber = i;
    }

    public void setClientName(PrincipalName principalName) {
        this._clientModifier.setPrincipalName(principalName);
    }

    public void setClientRealm(String str) {
        this._clientModifier.setRealm(str);
    }

    public void setAuthorizationData(AuthorizationData authorizationData) {
        this._authorizationData = authorizationData;
    }

    public void setChecksum(Checksum checksum) {
        this._checksum = checksum;
    }

    public void setClientMicroSecond(int i) {
        this._clientMicroSecond = i;
    }

    public void setClientTime(KerberosTime kerberosTime) {
        this._clientTime = kerberosTime;
    }

    public void setSequenceNumber(int i) {
        this._sequenceNumber = i;
    }

    public void setSubSessionKey(EncryptionKey encryptionKey) {
        this._subSessionKey = encryptionKey;
    }
}
