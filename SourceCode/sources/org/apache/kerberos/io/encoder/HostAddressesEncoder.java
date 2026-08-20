package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.HostAddresses;
/* loaded from: classes5.dex */
public class HostAddressesEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encodeSequence(HostAddresses hostAddresses) {
        HostAddress[] addresses = hostAddresses.getAddresses();
        DERSequence dERSequence = new DERSequence();
        for (HostAddress hostAddress : addresses) {
            dERSequence.add(encode(hostAddress));
        }
        return dERSequence;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(HostAddress hostAddress) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(hostAddress.getAddressType().getOrdinal())));
        dERSequence.add(new DERTaggedObject(1, new DEROctetString(hostAddress.getAddress())));
        return dERSequence;
    }
}
