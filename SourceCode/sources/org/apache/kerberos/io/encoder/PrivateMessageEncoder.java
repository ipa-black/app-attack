package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.application.PrivateMessage;
/* loaded from: classes5.dex */
public class PrivateMessageEncoder {
    public byte[] encode(PrivateMessage privateMessage) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(privateMessage.getMessageType().getOrdinal(), encodePrivateMessageSequence(privateMessage)));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodePrivateMessageSequence(PrivateMessage privateMessage) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(privateMessage.getProtocolVersionNumber())));
        dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(privateMessage.getMessageType().getOrdinal())));
        dERSequence.add(new DERTaggedObject(3, EncryptedDataEncoder.encodeSequence(privateMessage.getEncryptedPart())));
        return dERSequence;
    }
}
