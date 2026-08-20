package org.apache.kerberos.sam;

import javax.security.auth.kerberos.KerberosKey;
import org.apache.kerberos.crypto.encryption.EncryptionEngineFactory;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.io.decoder.EncryptedDataDecoder;
import org.apache.kerberos.io.decoder.EncryptedTimestampDecoder;
import org.apache.kerberos.messages.value.EncryptionKey;
/* loaded from: classes5.dex */
public class TimestampChecker implements KeyIntegrityChecker {
    private static final long FIVE_MINUTES = 300000;

    @Override // org.apache.kerberos.sam.KeyIntegrityChecker
    public boolean checkKeyIntegrity(byte[] bArr, KerberosKey kerberosKey) {
        EncryptionKey encryptionKey = new EncryptionKey(EncryptionType.getTypeByOrdinal(kerberosKey.getKeyType()), kerberosKey.getEncoded());
        return new EncryptedTimestampDecoder().decode(EncryptionEngineFactory.getEncryptionEngineFor(encryptionKey).getDecryptedData(encryptionKey, EncryptedDataDecoder.decode(bArr))).getTimeStamp().isInClockSkew(300000L);
    }
}
