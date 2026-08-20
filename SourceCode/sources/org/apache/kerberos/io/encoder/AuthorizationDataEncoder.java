package org.apache.kerberos.io.encoder;

import java.util.Iterator;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.AuthorizationDataEntry;
/* loaded from: classes5.dex */
public class AuthorizationDataEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(AuthorizationData authorizationData) {
        Iterator it = authorizationData.iterator();
        DERSequence dERSequence = new DERSequence();
        while (it.hasNext()) {
            AuthorizationDataEntry authorizationDataEntry = (AuthorizationDataEntry) it.next();
            DERSequence dERSequence2 = new DERSequence();
            dERSequence2.add(new DERTaggedObject(0, DERInteger.valueOf(authorizationDataEntry.getAuthorizationDataType().getOrdinal())));
            dERSequence2.add(new DERTaggedObject(1, new DEROctetString(authorizationDataEntry.getAuthorizationData())));
            dERSequence.add(dERSequence2);
        }
        return dERSequence;
    }
}
