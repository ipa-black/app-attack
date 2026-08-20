package org.apache.kerberos.io.decoder;

import java.util.Enumeration;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.HostAddressType;
import org.apache.kerberos.messages.value.HostAddresses;
/* loaded from: classes5.dex */
public class HostAddressDecoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static HostAddress decode(DERSequence dERSequence) {
        HostAddressType hostAddressType = HostAddressType.NULL;
        Enumeration objects = dERSequence.getObjects();
        byte[] bArr = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                hostAddressType = HostAddressType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 1) {
                bArr = ((DEROctetString) object).getOctets();
            }
        }
        return new HostAddress(hostAddressType, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static HostAddresses decodeSequence(DERSequence dERSequence) {
        HostAddress[] hostAddressArr = new HostAddress[dERSequence.size()];
        Enumeration objects = dERSequence.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            hostAddressArr[i] = decode((DERSequence) objects.nextElement());
            i++;
        }
        return new HostAddresses(hostAddressArr);
    }
}
