package org.apache.kerberos.io.decoder;

import java.util.Enumeration;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.LastRequestEntry;
import org.apache.kerberos.messages.value.LastRequestType;
/* loaded from: classes5.dex */
public class LastRequestDecoder {
    protected LastRequest decodeSequence(DERSequence dERSequence) {
        LastRequestEntry[] lastRequestEntryArr = new LastRequestEntry[dERSequence.size()];
        Enumeration objects = dERSequence.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            lastRequestEntryArr[i] = decode((DERSequence) objects.nextElement());
            i++;
        }
        return new LastRequest(lastRequestEntryArr);
    }

    protected LastRequestEntry decode(DERSequence dERSequence) {
        LastRequestType lastRequestType = LastRequestType.NONE;
        Enumeration objects = dERSequence.getObjects();
        KerberosTime kerberosTime = null;
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERInteger object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                lastRequestType = LastRequestType.getTypeByOrdinal(object.intValue());
            } else if (tagNo == 1) {
                kerberosTime = KerberosTimeDecoder.decode((DERGeneralizedTime) object);
            }
        }
        return new LastRequestEntry(lastRequestType, kerberosTime);
    }
}
