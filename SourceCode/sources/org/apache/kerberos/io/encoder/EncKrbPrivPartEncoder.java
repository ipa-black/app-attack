package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.EncKrbPrivPart;
/* loaded from: classes5.dex */
public class EncKrbPrivPartEncoder {
    private static final int APPLICATION_CODE = 28;

    public byte[] encode(EncKrbPrivPart encKrbPrivPart) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(28, encodePrivatePartSequence(encKrbPrivPart)));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodePrivatePartSequence(EncKrbPrivPart encKrbPrivPart) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, new DEROctetString(encKrbPrivPart.getUserData())));
        if (encKrbPrivPart.getTimestamp() != null) {
            dERSequence.add(new DERTaggedObject(1, KerberosTimeEncoder.encode(encKrbPrivPart.getTimestamp())));
        }
        if (encKrbPrivPart.getMicroSecond() != null) {
            dERSequence.add(new DERTaggedObject(2, DERInteger.valueOf(encKrbPrivPart.getMicroSecond().intValue())));
        }
        if (encKrbPrivPart.getSequenceNumber() != null) {
            dERSequence.add(new DERTaggedObject(3, DERInteger.valueOf(encKrbPrivPart.getSequenceNumber().intValue())));
        }
        dERSequence.add(new DERTaggedObject(4, HostAddressesEncoder.encode(encKrbPrivPart.getSenderAddress())));
        if (encKrbPrivPart.getRecipientAddress() != null) {
            dERSequence.add(new DERTaggedObject(5, HostAddressesEncoder.encode(encKrbPrivPart.getRecipientAddress())));
        }
        return dERSequence;
    }
}
