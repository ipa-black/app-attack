package org.apache.kerberos.io.decoder;

import java.util.Enumeration;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.PrincipalName;
import org.apache.kerberos.messages.value.PrincipalNameModifier;
/* loaded from: classes5.dex */
public class PrincipalNameDecoder {
    public static PrincipalName decode(DERSequence dERSequence) {
        PrincipalNameModifier principalNameModifier = new PrincipalNameModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                principalNameModifier.setType(object.intValue());
            } else if (tagNo == 1) {
                decodeNameString((DERSequence) object, principalNameModifier);
            }
        }
        return principalNameModifier.getPrincipalName();
    }

    private static void decodeNameString(DERSequence dERSequence, PrincipalNameModifier principalNameModifier) {
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            principalNameModifier.addName(((DERGeneralString) objects.nextElement()).getString());
        }
    }
}
