package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.Checksum;
/* loaded from: classes5.dex */
public class ChecksumEncoder {
    public static DERSequence encode(Checksum checksum) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(checksum.getChecksumType().getOrdinal())));
        dERSequence.add(new DERTaggedObject(1, new DEROctetString(checksum.getChecksumValue())));
        return dERSequence;
    }
}
