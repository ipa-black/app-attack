package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERBitString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.ApplicationRequest;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.ApOptions;
/* loaded from: classes5.dex */
public class ApplicationRequestDecoder {
    public ApplicationRequest decode(byte[] bArr) throws IOException {
        return decodeApplicationRequestSequence((DERSequence) new ASN1InputStream(bArr).readObject().getObject());
    }

    private ApplicationRequest decodeApplicationRequestSequence(DERSequence dERSequence) throws IOException {
        ApplicationRequest applicationRequest = new ApplicationRequest();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                applicationRequest.setProtocolVersionNumber(object.intValue());
            } else if (tagNo == 1) {
                applicationRequest.setMessageType(MessageType.getTypeByOrdinal(object.intValue()));
            } else if (tagNo == 2) {
                applicationRequest.setApOptions(new ApOptions(((DERBitString) object).getOctets()));
            } else if (tagNo == 3) {
                applicationRequest.setTicket(TicketDecoder.decode((DERApplicationSpecific) object));
            } else if (tagNo == 4) {
                applicationRequest.setEncPart(EncryptedDataDecoder.decode((DERSequence) object));
            }
        }
        return applicationRequest;
    }
}
