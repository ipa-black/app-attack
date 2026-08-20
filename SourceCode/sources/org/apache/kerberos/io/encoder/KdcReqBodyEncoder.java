package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERBitString;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.KdcRequest;
/* loaded from: classes5.dex */
public class KdcReqBodyEncoder {
    public byte[] encode(KdcRequest kdcRequest) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(encodeInitialSequence(kdcRequest));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodeInitialSequence(KdcRequest kdcRequest) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, new DERBitString(kdcRequest.getKdcOptions().getBytes())));
        if (kdcRequest.getClientPrincipal() != null) {
            dERSequence.add(new DERTaggedObject(1, PrincipalNameEncoder.encode(kdcRequest.getClientPrincipal())));
        }
        dERSequence.add(new DERTaggedObject(2, DERGeneralString.valueOf(kdcRequest.getRealm().toString())));
        if (kdcRequest.getServerPrincipal() != null) {
            dERSequence.add(new DERTaggedObject(3, PrincipalNameEncoder.encode(kdcRequest.getServerPrincipal())));
        }
        if (kdcRequest.getFrom() != null) {
            dERSequence.add(new DERTaggedObject(4, KerberosTimeEncoder.encode(kdcRequest.getFrom())));
        }
        dERSequence.add(new DERTaggedObject(5, KerberosTimeEncoder.encode(kdcRequest.getTill())));
        if (kdcRequest.getRtime() != null) {
            dERSequence.add(new DERTaggedObject(6, KerberosTimeEncoder.encode(kdcRequest.getRtime())));
        }
        dERSequence.add(new DERTaggedObject(7, DERInteger.valueOf(kdcRequest.getNonce())));
        dERSequence.add(new DERTaggedObject(8, EncryptionTypeEncoder.encode(kdcRequest.getEType())));
        if (kdcRequest.getAddresses() != null) {
            dERSequence.add(new DERTaggedObject(9, HostAddressesEncoder.encodeSequence(kdcRequest.getAddresses())));
        }
        if (kdcRequest.getEncAuthorizationData() != null) {
            dERSequence.add(new DERTaggedObject(10, EncryptedDataEncoder.encodeSequence(kdcRequest.getEncAuthorizationData())));
        }
        if (kdcRequest.getAdditionalTickets() != null) {
            dERSequence.add(new DERTaggedObject(11, TicketEncoder.encodeSequence(kdcRequest.getAdditionalTickets())));
        }
        return dERSequence;
    }
}
