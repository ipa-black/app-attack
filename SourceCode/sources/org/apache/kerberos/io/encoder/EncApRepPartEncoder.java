package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.EncApRepPart;
/* loaded from: classes5.dex */
public class EncApRepPartEncoder {
    public static final int APPLICATION_CODE = 27;

    public byte[] encode(EncApRepPart encApRepPart) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(27, encodeApRepPartSequence(encApRepPart)));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodeApRepPartSequence(EncApRepPart encApRepPart) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, KerberosTimeEncoder.encode(encApRepPart.getClientTime())));
        dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(encApRepPart.getClientMicroSecond())));
        if (encApRepPart.getSubSessionKey() != null) {
            dERSequence.add(new DERTaggedObject(2, EncryptionKeyEncoder.encode(encApRepPart.getSubSessionKey())));
        }
        if (encApRepPart.getSequenceNumber() != null) {
            dERSequence.add(new DERTaggedObject(3, DERInteger.valueOf(encApRepPart.getSequenceNumber().intValue())));
        }
        return dERSequence;
    }
}
