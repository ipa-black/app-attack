package org.apache.kerberos.io.decoder;

import java.util.Enumeration;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.kerberos.crypto.encryption.EncryptionType;
/* loaded from: classes5.dex */
public class EncryptionTypeDecoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static EncryptionType[] decode(DERSequence dERSequence) {
        EncryptionType[] encryptionTypeArr = new EncryptionType[dERSequence.size()];
        Enumeration objects = dERSequence.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            encryptionTypeArr[i] = EncryptionType.getTypeByOrdinal(((DERInteger) objects.nextElement()).intValue());
            i++;
        }
        return encryptionTypeArr;
    }
}
