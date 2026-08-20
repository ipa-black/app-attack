package org.apache.kerberos.store;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.SamType;
/* loaded from: classes5.dex */
public class PrincipalStoreEntry {
    private String _commonName;
    private int _kdcFlags;
    private EncryptionKey _key;
    private int _maxLife;
    private int _maxRenew;
    private KerberosTime _passwordEnd;
    private KerberosPrincipal _principal;
    private String _realmName;
    private KerberosTime _validEnd;
    private KerberosTime _validStart;
    private SamType samType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PrincipalStoreEntry(String str, KerberosPrincipal kerberosPrincipal, int i, KerberosTime kerberosTime, KerberosTime kerberosTime2, KerberosTime kerberosTime3, int i2, int i3, int i4, int i5, byte[] bArr, String str2, SamType samType) {
        this._commonName = str;
        this._principal = kerberosPrincipal;
        this._validStart = kerberosTime;
        this._validEnd = kerberosTime2;
        this._passwordEnd = kerberosTime3;
        this._maxLife = i2;
        this._maxRenew = i3;
        this._kdcFlags = i4;
        this._realmName = str2;
        this.samType = samType;
        this._key = new EncryptionKey(EncryptionType.getTypeByOrdinal(i5), bArr, i);
    }

    public String getCommonName() {
        return this._commonName;
    }

    public EncryptionKey getEncryptionKey() {
        return this._key;
    }

    public int getKDCFlags() {
        return this._kdcFlags;
    }

    public int getMaxLife() {
        return this._maxLife;
    }

    public int getMaxRenew() {
        return this._maxRenew;
    }

    public KerberosTime getPasswordEnd() {
        return this._passwordEnd;
    }

    public KerberosPrincipal getPrincipal() {
        return this._principal;
    }

    public String getRealmName() {
        return this._realmName;
    }

    public KerberosTime getValidEnd() {
        return this._validEnd;
    }

    public KerberosTime getValidStart() {
        return this._validStart;
    }

    public SamType getSamType() {
        return this.samType;
    }
}
