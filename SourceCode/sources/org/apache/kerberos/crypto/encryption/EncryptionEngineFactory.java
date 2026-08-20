package org.apache.kerberos.crypto.encryption;

import org.apache.kerberos.exceptions.ErrorType;
import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.messages.value.EncryptionKey;
/* loaded from: classes5.dex */
public class EncryptionEngineFactory {
    public static EncryptionEngine getEncryptionEngineFor(EncryptionKey encryptionKey) throws KerberosException {
        int ordinal = encryptionKey.getKeyType().getOrdinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 5) {
                            if (ordinal == 7) {
                                return new Des3CbcSha1Encryption();
                            }
                            throw new KerberosException(ErrorType.KDC_ERR_ETYPE_NOSUPP);
                        }
                        return new Des3CbcMd5Encryption();
                    }
                    return new DesCbcMd5Encryption();
                }
                return new DesCbcMd4Encryption();
            }
            return new DesCbcCrcEncryption();
        }
        return new NullEncryption();
    }
}
