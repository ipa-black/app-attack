package org.apache.kerberos.crypto;

import java.security.SecureRandom;
import javax.security.auth.kerberos.KerberosKey;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.value.EncryptionKey;
/* loaded from: classes5.dex */
public class RandomKey {
    private static final SecureRandom random = new SecureRandom();

    public EncryptionKey getNewSessionKey() {
        return new EncryptionKey(EncryptionType.DES_CBC_MD5, new DesStringToKey(new String(getRandomBytes(8))).getKey());
    }

    public static KerberosKey getRandomKeyFor(KerberosPrincipal kerberosPrincipal) {
        return new KerberosKey(kerberosPrincipal, new DesStringToKey(new String(getRandomBytes(8))).getKey(), 3, 1);
    }

    private static byte[] getRandomBytes(int i) {
        byte[] bArr = new byte[i];
        random.nextBytes(bArr);
        return bArr;
    }
}
