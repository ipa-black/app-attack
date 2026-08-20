package org.apache.kerberos.io.decoder;

import java.util.Enumeration;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.value.EncryptionKey;
/* loaded from: classes5.dex */
public class EncryptionKeyDecoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static EncryptionKey decode(DERSequence dERSequence) {
        EncryptionType encryptionType = EncryptionType.NULL;
        Enumeration objects = dERSequence.getObjects();
        byte[] bArr = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                encryptionType = EncryptionType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 1) {
                bArr = ((DEROctetString) object).getOctets();
            }
        }
        return new EncryptionKey(encryptionType, bArr);
    }
}
