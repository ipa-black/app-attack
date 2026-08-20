package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.PreAuthenticationData;
/* loaded from: classes5.dex */
public class PreAuthenticationDataEncoder {
    public static byte[] encode(PreAuthenticationData[] preAuthenticationDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(encodeSequence(preAuthenticationDataArr));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    protected static DERSequence encodeSequence(PreAuthenticationData[] preAuthenticationDataArr) {
        DERSequence dERSequence = new DERSequence();
        for (PreAuthenticationData preAuthenticationData : preAuthenticationDataArr) {
            dERSequence.add(encode(preAuthenticationData));
        }
        return dERSequence;
    }

    protected static DERSequence encode(PreAuthenticationData preAuthenticationData) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(preAuthenticationData.getDataType().getOrdinal())));
        if (preAuthenticationData.getDataValue() != null) {
            dERSequence.add(new DERTaggedObject(2, new DEROctetString(preAuthenticationData.getDataValue())));
        }
        return dERSequence;
    }
}
