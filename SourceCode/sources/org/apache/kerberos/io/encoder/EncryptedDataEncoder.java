package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.EncryptedData;
/* loaded from: classes5.dex */
public class EncryptedDataEncoder {
    public static byte[] encode(EncryptedData encryptedData) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(encodeSequence(encryptedData));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static DERSequence encodeSequence(EncryptedData encryptedData) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(encryptedData.getEncryptionType().getOrdinal())));
        if (encryptedData.getKeyVersion() > 0) {
            dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(encryptedData.getKeyVersion())));
        }
        dERSequence.add(new DERTaggedObject(2, new DEROctetString(encryptedData.getCipherText())));
        return dERSequence;
    }
}
