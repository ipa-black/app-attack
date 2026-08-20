package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.EncryptedTimeStamp;
/* loaded from: classes5.dex */
public class EncryptedTimestampEncoder {
    public byte[] encode(EncryptedTimeStamp encryptedTimeStamp) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(encodeTimestamp(encryptedTimeStamp));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodeTimestamp(EncryptedTimeStamp encryptedTimeStamp) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, KerberosTimeEncoder.encode(encryptedTimeStamp.getTimeStamp())));
        if (encryptedTimeStamp.getMicroSeconds() > 0) {
            dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(encryptedTimeStamp.getMicroSeconds())));
        }
        return dERSequence;
    }
}
