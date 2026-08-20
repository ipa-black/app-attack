package org.apache.kerberos.crypto.encryption;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.DESEngine;
/* loaded from: classes5.dex */
public abstract class DesCbcEncryption extends EncryptionEngine {
    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int blockSize() {
        return 8;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int keySize() {
        return 8;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public BlockCipher getBlockCipher() {
        return new DESEngine();
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public CipherType keyType() {
        return CipherType.DES;
    }
}
