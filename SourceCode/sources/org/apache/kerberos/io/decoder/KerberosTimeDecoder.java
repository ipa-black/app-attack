package org.apache.kerberos.io.decoder;

import java.text.ParseException;
import java.util.Date;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class KerberosTimeDecoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static KerberosTime decode(DERGeneralizedTime dERGeneralizedTime) {
        Date date;
        try {
            date = dERGeneralizedTime.getDate();
        } catch (ParseException e2) {
            e2.printStackTrace();
            date = null;
        }
        return new KerberosTime(date);
    }
}
