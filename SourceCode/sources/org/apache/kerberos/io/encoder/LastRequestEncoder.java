package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.LastRequestEntry;
/* loaded from: classes5.dex */
public class LastRequestEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(LastRequest lastRequest) {
        LastRequestEntry[] entries = lastRequest.getEntries();
        DERSequence dERSequence = new DERSequence();
        for (int i = 0; i < entries.length; i++) {
            DERSequence dERSequence2 = new DERSequence();
            dERSequence2.add(new DERTaggedObject(0, DERInteger.valueOf(entries[i].getLastRequestType().getOrdinal())));
            dERSequence2.add(new DERTaggedObject(1, DERGeneralizedTime.valueOf(entries[i].getLastRequestValue().toDate())));
            dERSequence.add(dERSequence2);
        }
        return dERSequence;
    }
}
