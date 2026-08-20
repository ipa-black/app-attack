package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.application.ApplicationReply;
/* loaded from: classes5.dex */
public class ApplicationReplyEncoder {
    public static final int APPLICATION_CODE = 15;

    public byte[] encode(ApplicationReply applicationReply) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(15, encodeReplySequence(applicationReply)));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodeReplySequence(ApplicationReply applicationReply) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(applicationReply.getProtocolVersionNumber())));
        dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(applicationReply.getMessageType().getOrdinal())));
        dERSequence.add(new DERTaggedObject(2, EncryptedDataEncoder.encodeSequence(applicationReply.getEncPart())));
        return dERSequence;
    }
}
