package org.apache.kerberos.io.decoder;

import java.util.Enumeration;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DEROctetString;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.messages.value.Checksum;
/* loaded from: classes5.dex */
public class ChecksumDecoder {
    public static Checksum decode(DERSequence dERSequence) {
        ChecksumType checksumType = ChecksumType.NULL;
        Enumeration objects = dERSequence.getObjects();
        byte[] bArr = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                checksumType = ChecksumType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 1) {
                bArr = ((DEROctetString) object).getOctets();
            }
        }
        return new Checksum(checksumType, bArr);
    }
}
