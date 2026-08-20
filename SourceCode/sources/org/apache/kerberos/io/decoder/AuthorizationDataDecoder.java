package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.AuthorizationDataEntry;
import org.apache.kerberos.messages.value.AuthorizationType;
/* loaded from: classes5.dex */
public class AuthorizationDataDecoder {
    public AuthorizationData decode(byte[] bArr) throws IOException {
        return decodeSequence(new ASN1InputStream(bArr).readObject());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static AuthorizationData decodeSequence(DERSequence dERSequence) {
        AuthorizationData authorizationData = new AuthorizationData();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            authorizationData.add(decodeAuthorizationEntry((DERSequence) objects.nextElement()));
        }
        return authorizationData;
    }

    protected static AuthorizationDataEntry decodeAuthorizationEntry(DERSequence dERSequence) {
        AuthorizationType authorizationType = AuthorizationType.NULL;
        Enumeration objects = dERSequence.getObjects();
        byte[] bArr = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                authorizationType = AuthorizationType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 1) {
                bArr = ((DEROctetString) object).getOctets();
            }
        }
        return new AuthorizationDataEntry(authorizationType, bArr);
    }
}
