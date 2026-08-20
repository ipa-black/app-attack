package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.application.PrivateMessage;
/* loaded from: classes5.dex */
public class PrivateMessageDecoder {
    public PrivateMessage decode(byte[] bArr) throws IOException {
        return decodePrivateMessageSequence((DERSequence) new ASN1InputStream(bArr).readObject().getObject());
    }

    private PrivateMessage decodePrivateMessageSequence(DERSequence dERSequence) {
        PrivateMessage privateMessage = new PrivateMessage();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                privateMessage.setProtocolVersionNumber(object.intValue());
            } else if (tagNo == 1) {
                privateMessage.setMessageType(MessageType.getTypeByOrdinal(object.intValue()));
            } else if (tagNo == 3) {
                privateMessage.setEncryptedPart(EncryptedDataDecoder.decode((DERSequence) object));
            }
        }
        return privateMessage;
    }
}
