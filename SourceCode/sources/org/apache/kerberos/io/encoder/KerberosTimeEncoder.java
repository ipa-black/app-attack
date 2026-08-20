package org.apache.kerberos.io.encoder;

import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class KerberosTimeEncoder {
    /* JADX INFO: Access modifiers changed from: protected */
    public static DERGeneralizedTime encode(KerberosTime kerberosTime) {
        return DERGeneralizedTime.valueOf(kerberosTime.toDate());
    }
}
