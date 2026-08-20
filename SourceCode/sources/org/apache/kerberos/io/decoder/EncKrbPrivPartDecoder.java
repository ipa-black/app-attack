package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.EncKrbPrivPart;
import org.apache.kerberos.messages.components.EncKrbPrivPartModifier;
/* loaded from: classes5.dex */
public class EncKrbPrivPartDecoder {
    public EncKrbPrivPart decode(byte[] bArr) throws IOException {
        return decodePrivatePartSequence((DERSequence) new ASN1InputStream(bArr).readObject().getObject());
    }

    private EncKrbPrivPart decodePrivatePartSequence(DERSequence dERSequence) {
        EncKrbPrivPartModifier encKrbPrivPartModifier = new EncKrbPrivPartModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DEROctetString object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                encKrbPrivPartModifier.setUserData(object.getOctets());
            } else if (tagNo == 1) {
                encKrbPrivPartModifier.setTimestamp(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
            } else if (tagNo == 2) {
                encKrbPrivPartModifier.setMicroSecond(new Integer(((DERInteger) object).intValue()));
            } else if (tagNo == 3) {
                encKrbPrivPartModifier.setSequenceNumber(new Integer(((DERInteger) object).intValue()));
            } else if (tagNo == 4) {
                encKrbPrivPartModifier.setSenderAddress(HostAddressDecoder.decode((DERSequence) object));
            } else if (tagNo == 5) {
                encKrbPrivPartModifier.setRecipientAddress(HostAddressDecoder.decode((DERSequence) object));
            }
        }
        return encKrbPrivPartModifier.getEncKrbPrivPart();
    }
}
