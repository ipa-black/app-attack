package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.value.EncryptedTimeStamp;
import org.apache.kerberos.messages.value.EncryptedTimeStampModifier;
/* loaded from: classes5.dex */
public class EncryptedTimestampDecoder {
    public EncryptedTimeStamp decode(byte[] bArr) throws IOException {
        return decodeEncryptedTimestamp((DERSequence) new ASN1InputStream(bArr).readObject());
    }

    protected EncryptedTimeStamp decodeEncryptedTimestamp(DERSequence dERSequence) {
        EncryptedTimeStampModifier encryptedTimeStampModifier = new EncryptedTimeStampModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERGeneralizedTime object = dERTaggedObject.getObject();
            if (tagNo == 0) {
                encryptedTimeStampModifier.setKerberosTime(KerberosTimeDecoder.decode(object));
            } else if (tagNo == 1) {
                encryptedTimeStampModifier.setMicroSecond(((DERInteger) object).intValue());
            }
        }
        return encryptedTimeStampModifier.getEncryptedTimestamp();
    }
}
