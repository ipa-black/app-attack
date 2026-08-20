package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.EncryptedDataModifier;
/* loaded from: classes5.dex */
public class EncryptedDataDecoder {
    public static EncryptedData decode(byte[] bArr) throws IOException {
        return decode(new ASN1InputStream(bArr).readObject());
    }

    public static EncryptedData decode(DERSequence dERSequence) {
        EncryptedDataModifier encryptedDataModifier = new EncryptedDataModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                encryptedDataModifier.setEncryptionType(EncryptionType.getTypeByOrdinal(object.intValue()));
            } else if (tagNo == 1) {
                encryptedDataModifier.setKeyVersion(object.intValue());
            } else if (tagNo == 2) {
                encryptedDataModifier.setCipherText(((DEROctetString) object).getOctets());
            }
        }
        return encryptedDataModifier.getEncryptedData();
    }
}
