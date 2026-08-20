package org.apache.kerberos.io.decoder;

import java.io.IOException;
import java.util.Enumeration;
import org.apache.asn1.der.ASN1InputStream;
import org.apache.asn1.der.DERGeneralString;
import org.apache.asn1.der.DERGeneralizedTime;
import org.apache.asn1.der.DERInteger;
import org.apache.asn1.der.DERSequence;
import org.apache.asn1.der.DERTaggedObject;
import org.apache.kerberos.messages.components.Authenticator;
import org.apache.kerberos.messages.components.AuthenticatorModifier;
/* loaded from: classes5.dex */
public class AuthenticatorDecoder {
    public Authenticator decode(byte[] bArr) throws IOException {
        return decode(new ASN1InputStream(bArr).readObject().getObject());
    }

    protected static Authenticator decode(DERSequence dERSequence) {
        AuthenticatorModifier authenticatorModifier = new AuthenticatorModifier();
        Enumeration objects = dERSequence.getObjects();
        while (objects.hasMoreElements()) {
            DERTaggedObject dERTaggedObject = (DERTaggedObject) objects.nextElement();
            int tagNo = dERTaggedObject.getTagNo();
            DERSequence object = dERTaggedObject.getObject();
            switch (tagNo) {
                case 0:
                    authenticatorModifier.setVersionNumber(((DERInteger) object).intValue());
                    break;
                case 1:
                    authenticatorModifier.setClientRealm(((DERGeneralString) object).getString());
                    break;
                case 2:
                    authenticatorModifier.setClientName(PrincipalNameDecoder.decode(object));
                    break;
                case 3:
                    authenticatorModifier.setChecksum(ChecksumDecoder.decode(object));
                    break;
                case 4:
                    authenticatorModifier.setClientMicroSecond(((DERInteger) object).intValue());
                    break;
                case 5:
                    authenticatorModifier.setClientTime(KerberosTimeDecoder.decode((DERGeneralizedTime) object));
                    break;
                case 6:
                    authenticatorModifier.setSubSessionKey(EncryptionKeyDecoder.decode(object));
                    break;
                case 7:
                    authenticatorModifier.setSequenceNumber(((DERInteger) object).intValue());
                    break;
                case 8:
                    authenticatorModifier.setAuthorizationData(AuthorizationDataDecoder.decodeSequence(object));
                    break;
            }
        }
        return authenticatorModifier.getAuthenticator();
    }
}
