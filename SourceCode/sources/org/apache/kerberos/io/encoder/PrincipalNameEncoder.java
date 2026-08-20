package org.apache.kerberos.io.encoder;

import java.util.Arrays;
import java.util.List;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
/* loaded from: classes5.dex */
public class PrincipalNameEncoder {
    private static final String COMPONENT_SEPARATOR = "/";
    private static final String REALM_SEPARATOR = "@";

    /* JADX INFO: Access modifiers changed from: protected */
    public static DERSequence encode(KerberosPrincipal kerberosPrincipal) {
        DERSequence dERSequence = new DERSequence();
        dERSequence.add(new DERTaggedObject(0, DERInteger.valueOf(kerberosPrincipal.getNameType())));
        dERSequence.add(new DERTaggedObject(1, encodeNameSequence(kerberosPrincipal)));
        return dERSequence;
    }

    private static DERSequence encodeNameSequence(KerberosPrincipal kerberosPrincipal) {
        DERSequence dERSequence = new DERSequence();
        for (String str : getNameStrings(kerberosPrincipal)) {
            dERSequence.add(DERGeneralString.valueOf(str));
        }
        return dERSequence;
    }

    private static List getNameStrings(KerberosPrincipal kerberosPrincipal) {
        return Arrays.asList(kerberosPrincipal.getName().split(REALM_SEPARATOR)[0].split(COMPONENT_SEPARATOR));
    }
}
