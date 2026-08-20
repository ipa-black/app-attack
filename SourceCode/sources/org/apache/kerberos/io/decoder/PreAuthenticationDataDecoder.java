package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.PreAuthenticationData;
import org.apache.kerberos.messages.value.PreAuthenticationDataModifier;
import org.apache.kerberos.messages.value.PreAuthenticationDataType;
/* loaded from: classes5.dex */
public class PreAuthenticationDataDecoder {
    public PreAuthenticationData decode(byte[] bArr) throws IOException {
        return decode(new ASN1InputStream(bArr).readObject());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PreAuthenticationData[] decodeSequence(DERSequence dERSequence) {
        PreAuthenticationData[] preAuthenticationDataArr = new PreAuthenticationData[dERSequence.size()];
        Enumeration objects = dERSequence.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            preAuthenticationDataArr[i] = decode((DERSequence) objects.nextElement());
            i++;
        }
        return preAuthenticationDataArr;
    }

    protected static PreAuthenticationData decode(DERSequence dERSequence) {
        PreAuthenticationDataModifier preAuthenticationDataModifier = new PreAuthenticationDataModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 1) {
                preAuthenticationDataModifier.setDataType(PreAuthenticationDataType.getTypeByOrdinal(object.intValue()));
            } else if (tagNo == 2) {
                preAuthenticationDataModifier.setDataValue(((DEROctetString) object).getOctets());
            }
        }
        return preAuthenticationDataModifier.getPreAuthenticationData();
    }
}
