package org.apache.kerberos.io.encoder;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.KdcReply;
import org.apache.kerberos.messages.value.PreAuthenticationData;
/* loaded from: classes5.dex */
public class KdcReplyEncoder {
    public void encode(KdcReply kdcReply, ByteBuffer byteBuffer) throws IOException {
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteBuffer);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(kdcReply.getMessageType().getOrdinal(), encodeKdcReplySequence(kdcReply)));
        aSN1OutputStream.close();
    }

    private DERSequence encodeKdcReplySequence(KdcReply kdcReply) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(kdcReply.getProtocolVersionNumber())));
        dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(kdcReply.getMessageType().getOrdinal())));
        if (kdcReply.getPaData() != null) {
            dERSequence.add(new DERTaggedObject(2, encodePreAuthData(kdcReply.getPaData())));
        }
        dERSequence.add(new DERTaggedObject(3, DERGeneralString.valueOf(kdcReply.getClientRealm().toString())));
        dERSequence.add(new DERTaggedObject(4, PrincipalNameEncoder.encode(kdcReply.getClientPrincipal())));
        dERSequence.add(new DERTaggedObject(5, TicketEncoder.encode(kdcReply.getTicket())));
        dERSequence.add(new DERTaggedObject(6, EncryptedDataEncoder.encodeSequence(kdcReply.getEncPart())));
        return dERSequence;
    }

    private DERSequence encodePreAuthData(PreAuthenticationData[] preAuthenticationDataArr) {
        DERSequence dERSequence = new DERSequence();
        for (int i = 0; i < preAuthenticationDataArr.length; i++) {
            DERSequence dERSequence2 = new DERSequence();
            dERSequence2.add(new DERTaggedObject(1, DERInteger.valueOf(preAuthenticationDataArr[i].getDataType().getOrdinal())));
            dERSequence2.add(new DERTaggedObject(2, new DEROctetString(preAuthenticationDataArr[i].getDataValue())));
            dERSequence.add(dERSequence2);
        }
        return dERSequence;
    }
}
