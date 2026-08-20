package org.apache.kerberos.messages.value;

import java.util.Arrays;
import org.apache.kerberos.crypto.encryption.EncryptionType;
/* loaded from: classes5.dex */
public class EncryptionKey {
    private EncryptionType _keyType;
    private byte[] _keyValue;
    private int _keyVersion;

    public EncryptionKey(EncryptionType encryptionType, byte[] bArr) {
        this._keyType = encryptionType;
        this._keyValue = bArr;
    }

    public EncryptionKey(EncryptionType encryptionType, byte[] bArr, int i) {
        this._keyType = encryptionType;
        this._keyValue = bArr;
        this._keyVersion = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EncryptionKey) {
            EncryptionKey encryptionKey = (EncryptionKey) obj;
            return this._keyType == encryptionKey._keyType && Arrays.equals(this._keyValue, encryptionKey._keyValue);
        }
        return false;
    }

    public synchronized void destroy() {
        if (this._keyValue != null) {
            int i = 0;
            while (true) {
                byte[] bArr = this._keyValue;
                if (i >= bArr.length) {
                    break;
                }
                bArr[i] = 0;
                i++;
            }
        }
    }

    public String toString() {
        return new StringBuffer().append(this._keyType.toString()).append(" (").append(this._keyType.getOrdinal()).append(")").toString();
    }

    public EncryptionType getKeyType() {
        return this._keyType;
    }

    public byte[] getKeyValue() {
        return this._keyValue;
    }

    public int getKeyVersion() {
        return this._keyVersion;
    }
}
