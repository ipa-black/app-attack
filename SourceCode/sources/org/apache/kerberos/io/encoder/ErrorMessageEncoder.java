package org.apache.kerberos.io.encoder;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.apache.asn1.der.ASN1OutputStream;
import org.apache.asn1.der.DERApplicationSpecific;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.ErrorMessage;
/* loaded from: classes5.dex */
public class ErrorMessageEncoder {
    public void encode(ErrorMessage errorMessage, ByteBuffer byteBuffer) throws IOException {
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteBuffer);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(errorMessage.getMessageType().getOrdinal(), encodeErrorMessageSequence(errorMessage)));
        aSN1OutputStream.close();
    }

    public byte[] encode(ErrorMessage errorMessage) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        aSN1OutputStream.writeObject(DERApplicationSpecific.valueOf(errorMessage.getMessageType().getOrdinal(), encodeErrorMessageSequence(errorMessage)));
        aSN1OutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private DERSequence encodeErrorMessageSequence(ErrorMessage errorMessage) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(errorMessage.getProtocolVersionNumber())));
        dERSequence.add(new DERTaggedObject(1, DERInteger.valueOf(errorMessage.getMessageType().getOrdinal())));
        if (errorMessage.getClientTime() != null) {
            dERSequence.add(new DERTaggedObject(2, KerberosTimeEncoder.encode(errorMessage.getClientTime())));
        }
        if (errorMessage.getClientMicroSecond() != null) {
            dERSequence.add(new DERTaggedObject(3, DERInteger.valueOf(errorMessage.getClientMicroSecond().intValue())));
        }
        dERSequence.add(new DERTaggedObject(4, KerberosTimeEncoder.encode(errorMessage.getServerTime())));
        dERSequence.add(new DERTaggedObject(5, DERInteger.valueOf(errorMessage.getServerMicroSecond())));
        dERSequence.add(new DERTaggedObject(6, DERInteger.valueOf(errorMessage.getErrorCode())));
        if (errorMessage.getClientPrincipal() != null) {
            dERSequence.add(new DERTaggedObject(7, DERGeneralString.valueOf(errorMessage.getClientPrincipal().getRealm().toString())));
        }
        if (errorMessage.getClientPrincipal() != null) {
            dERSequence.add(new DERTaggedObject(8, PrincipalNameEncoder.encode(errorMessage.getClientPrincipal())));
        }
        dERSequence.add(new DERTaggedObject(9, DERGeneralString.valueOf(errorMessage.getServerPrincipal().getRealm())));
        dERSequence.add(new DERTaggedObject(10, PrincipalNameEncoder.encode(errorMessage.getServerPrincipal())));
        if (errorMessage.getExplanatoryText() != null) {
            dERSequence.add(new DERTaggedObject(11, DERGeneralString.valueOf(errorMessage.getExplanatoryText())));
        }
        if (errorMessage.getExplanatoryData() != null) {
            dERSequence.add(new DERTaggedObject(12, new DEROctetString(errorMessage.getExplanatoryData())));
        }
        return dERSequence;
    }
}
