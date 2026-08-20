package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERBitString;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.KdcRequest;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.KdcOptions;
import org.apache.kerberos.messages.value.PreAuthenticationData;
import org.apache.kerberos.messages.value.RequestBody;
import org.apache.kerberos.messages.value.RequestBodyModifier;
/* loaded from: classes5.dex */
public class KdcRequestDecoder {
    public KdcRequest decode(ByteBuffer byteBuffer) throws IOException {
        return decodeKdcRequestSequence((DERSequence) new ASN1InputStream(byteBuffer).readObject().getObject());
    }

    private KdcRequest decodeKdcRequestSequence(DERSequence dERSequence) throws IOException {
        MessageType messageType = MessageType.NULL;
        Enumeration objects = dERSequence.getObjects();
        int i = 5;
        PreAuthenticationData[] preAuthenticationDataArr = null;
        RequestBody requestBody = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 1) {
                i = object.intValue();
            } else if (tagNo == 2) {
                messageType = MessageType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 3) {
                preAuthenticationDataArr = PreAuthenticationDataDecoder.decodeSequence((DERSequence) object);
            } else if (tagNo == 4) {
                requestBody = decodeRequestBody((DERSequence) object);
            }
        }
        return new KdcRequest(i, messageType, preAuthenticationDataArr, requestBody);
    }

    private RequestBody decodeRequestBody(DERSequence dERSequence) throws IOException {
        RequestBodyModifier requestBodyModifier = new RequestBodyModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERSequence object = dERTaggedObject.getObject();
            switch (tagNo) {
                case 0:
                    requestBodyModifier.setKdcOptions(new KdcOptions(((DERBitString) object).getOctets()));
                    break;
                case 1:
                    requestBodyModifier.setClientName(PrincipalNameDecoder.decode(object));
                    break;
                case 2:
                    requestBodyModifier.setRealm(((DERGeneralString) object).getString());
                    break;
                case 3:
                    requestBodyModifier.setServerName(PrincipalNameDecoder.decode(object));
                    break;
                case 4:
                    requestBodyModifier.setFrom(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 5:
                    requestBodyModifier.setTill(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 6:
                    requestBodyModifier.setRtime(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 7:
                    requestBodyModifier.setNonce(((DERInteger) object).intValue());
                    break;
                case 8:
                    requestBodyModifier.setEType(EncryptionTypeDecoder.decode(object));
                    break;
                case 9:
                    requestBodyModifier.setAddresses(HostAddressDecoder.decodeSequence(object));
                    break;
                case 10:
                    requestBodyModifier.setEncAuthorizationData(EncryptedDataDecoder.decode(object));
                    break;
                case 11:
                    requestBodyModifier.setAdditionalTickets(TicketDecoder.decodeSequence(object));
                    break;
            }
        }
        return requestBodyModifier.getRequestBody();
    }
}
