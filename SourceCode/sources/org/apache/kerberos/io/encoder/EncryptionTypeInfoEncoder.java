package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.EncryptionTypeInfoEntry;
/* loaded from: classes5.dex */
public class EncryptionTypeInfoEncoder {
    public static byte[] encode(EncryptionTypeInfoEntry[] encryptionTypeInfoEntryArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(encodeSequence(encryptionTypeInfoEntryArr));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    protected static DERSequence encodeSequence(EncryptionTypeInfoEntry[] encryptionTypeInfoEntryArr) {
        DERSequence dERSequence = new DERSequence();
        for (EncryptionTypeInfoEntry encryptionTypeInfoEntry : encryptionTypeInfoEntryArr) {
            dERSequence.add(encode(encryptionTypeInfoEntry));
        }
        return dERSequence;
    }

    protected static DERSequence encode(EncryptionTypeInfoEntry encryptionTypeInfoEntry) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(encryptionTypeInfoEntry.getEncryptionType().getOrdinal())));
        if (encryptionTypeInfoEntry.getSalt() != null) {
            dERSequence.add(new DERTaggedObject(1, new DEROctetString(encryptionTypeInfoEntry.getSalt())));
        }
        return dERSequence;
    }
}
