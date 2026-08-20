package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.kerberos.crypto.encryption.EncryptionType;
/* loaded from: classes5.dex */
public class EncryptionTypeEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(EncryptionType[] encryptionTypeArr) {
        DERSequence dERSequence = new DERSequence();
        for (EncryptionType encryptionType : encryptionTypeArr) {
            dERSequence.add(DERInteger.valueOf(encryptionType.getOrdinal()));
        }
        return dERSequence;
    }
}
