package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.TransitedEncoding;
/* loaded from: classes5.dex */
public class TransitedEncodingEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(TransitedEncoding transitedEncoding) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(transitedEncoding.getType().getOrdinal())));
        dERSequence.add(new DERTaggedObject(1, new DEROctetString(transitedEncoding.getContents())));
        return dERSequence;
    }
}
