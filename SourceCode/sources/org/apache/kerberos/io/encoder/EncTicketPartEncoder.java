package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERBitString;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.EncTicketPart;
/* loaded from: classes5.dex */
public class EncTicketPartEncoder {
    private static final int APPLICATION_CODE = 3;

    public byte[] encode(EncTicketPart encTicketPart) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(3, encodeInitialSequence(encTicketPart)));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public DERSequence encodeInitialSequence(EncTicketPart encTicketPart) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, new DERBitString(encTicketPart.getFlags().getBytes())));
        dERSequence.add(new DERTaggedObject(1, EncryptionKeyEncoder.encode(encTicketPart.getSessionKey())));
        dERSequence.add(new DERTaggedObject(2, DERGeneralString.valueOf(encTicketPart.getClientRealm().toString())));
        dERSequence.add(new DERTaggedObject(3, PrincipalNameEncoder.encode(encTicketPart.getClientPrincipal())));
        dERSequence.add(new DERTaggedObject(4, TransitedEncodingEncoder.encode(encTicketPart.getTransitedEncoding())));
        dERSequence.add(new DERTaggedObject(5, KerberosTimeEncoder.encode(encTicketPart.getAuthTime())));
        if (encTicketPart.getStartTime() != null) {
            dERSequence.add(new DERTaggedObject(6, KerberosTimeEncoder.encode(encTicketPart.getStartTime())));
        }
        dERSequence.add(new DERTaggedObject(7, KerberosTimeEncoder.encode(encTicketPart.getEndTime())));
        if (encTicketPart.getRenewTill() != null) {
            dERSequence.add(new DERTaggedObject(8, KerberosTimeEncoder.encode(encTicketPart.getRenewTill())));
        }
        if (encTicketPart.getClientAddresses() != null) {
            dERSequence.add(new DERTaggedObject(9, HostAddressesEncoder.encodeSequence(encTicketPart.getClientAddresses())));
        }
        if (encTicketPart.getAuthorizationData() != null) {
            dERSequence.add(new DERTaggedObject(10, AuthorizationDataEncoder.encode(encTicketPart.getAuthorizationData())));
        }
        return dERSequence;
    }
}
