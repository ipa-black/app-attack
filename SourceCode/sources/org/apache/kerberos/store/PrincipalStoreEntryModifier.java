package org.apache.kerberos.store;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.SamType;
/* loaded from: classes5.dex */
public class PrincipalStoreEntryModifier {
    private String _commonName;
    private int _encryptionType;
    private int _kdcFlags;
    private byte[] _key;
    private int _keyVersionNumber;
    private int _maxLife;
    private int _maxRenew;
    private KerberosTime _passwordEnd;
    private KerberosPrincipal _principal;
    private String _realmName;
    private KerberosTime _validEnd;
    private KerberosTime _validStart;
    private SamType samType;

    public PrincipalStoreEntry getEntry() {
        return new PrincipalStoreEntry(this._commonName, this._principal, this._keyVersionNumber, this._validStart, this._validEnd, this._passwordEnd, this._maxLife, this._maxRenew, this._kdcFlags, this._encryptionType, this._key, this._realmName, this.samType);
    }

    public void setCommonName(String str) {
        this._commonName = str;
    }

    public void setEncryptionType(int i) {
        this._encryptionType = i;
    }

    public void setKDCFlags(int i) {
        this._kdcFlags = i;
    }

    public void setKey(byte[] bArr) {
        this._key = bArr;
    }

    public void setKeyVersionNumber(int i) {
        this._keyVersionNumber = i;
    }

    public void setMaxLife(int i) {
        this._maxLife = i;
    }

    public void setMaxRenew(int i) {
        this._maxRenew = i;
    }

    public void setPasswordEnd(KerberosTime kerberosTime) {
        this._passwordEnd = kerberosTime;
    }

    public void setPrincipal(KerberosPrincipal kerberosPrincipal) {
        this._principal = kerberosPrincipal;
    }

    public void setRealmName(String str) {
        this._realmName = str;
    }

    public void setValidEnd(KerberosTime kerberosTime) {
        this._validEnd = kerberosTime;
    }

    public void setValidStart(KerberosTime kerberosTime) {
        this._validStart = kerberosTime;
    }

    public void setSamType(SamType samType) {
        this.samType = samType;
    }
}
