package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.EncryptionKey;
/* loaded from: classes5.dex */
public class EncryptionKeyEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(EncryptionKey encryptionKey) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(encryptionKey.getKeyType().getOrdinal())));
        dERSequence.add(new DERTaggedObject(1, new DEROctetString(encryptionKey.getKeyValue())));
        return dERSequence;
    }
}
