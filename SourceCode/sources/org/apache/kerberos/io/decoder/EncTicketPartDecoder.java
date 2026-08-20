package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERBitString;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.EncTicketPart;
import org.apache.kerberos.messages.components.EncTicketPartModifier;
import org.apache.kerberos.messages.value.TicketFlags;
import org.apache.kerberos.messages.value.TransitedEncoding;
import org.apache.kerberos.messages.value.TransitedEncodingType;
/* loaded from: classes5.dex */
public class EncTicketPartDecoder {
    public EncTicketPart decode(byte[] bArr) throws IOException {
        return decodeEncTicketPartSequence((DERSequence) new ASN1InputStream(bArr).readObject().getObject());
    }

    private EncTicketPart decodeEncTicketPartSequence(DERSequence dERSequence) {
        EncTicketPartModifier encTicketPartModifier = new EncTicketPartModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERSequence object = dERTaggedObject.getObject();
            switch (tagNo) {
                case 0:
                    encTicketPartModifier.setFlags(new TicketFlags(((DERBitString) object).getOctets()));
                    break;
                case 1:
                    encTicketPartModifier.setSessionKey(EncryptionKeyDecoder.decode(object));
                    break;
                case 2:
                    encTicketPartModifier.setClientRealm(((DERGeneralString) object).getString());
                    break;
                case 3:
                    encTicketPartModifier.setClientName(PrincipalNameDecoder.decode(object));
                    break;
                case 4:
                    encTicketPartModifier.setTransitedEncoding(decodeTransitedEncoding(object));
                    break;
                case 5:
                    encTicketPartModifier.setAuthTime(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 6:
                    encTicketPartModifier.setStartTime(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 7:
                    encTicketPartModifier.setEndTime(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 8:
                    encTicketPartModifier.setRenewTill(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 9:
                    encTicketPartModifier.setClientAddresses(HostAddressDecoder.decodeSequence(object));
                    break;
                case 10:
                    encTicketPartModifier.setAuthorizationData(AuthorizationDataDecoder.decodeSequence(object));
                    break;
            }
        }
        return encTicketPartModifier.getEncTicketPart();
    }

    protected TransitedEncoding decodeTransitedEncoding(DERSequence dERSequence) {
        TransitedEncodingType transitedEncodingType = TransitedEncodingType.NULL;
        Enumeration objects = dERSequence.getObjects();
        byte[] bArr = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                transitedEncodingType = TransitedEncodingType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 1) {
                bArr = ((DEROctetString) object).getOctets();
            }
        }
        return new TransitedEncoding(transitedEncodingType, bArr);
    }
}
