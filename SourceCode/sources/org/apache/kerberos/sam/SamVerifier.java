package org.apache.kerberos.sam;

import javax.security.auth.kerberos.KerberosKey;
import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.SamType;
/* loaded from: classes5.dex */
public interface SamVerifier {
    SamType getSamType();

    void setIntegrityChecker(KeyIntegrityChecker keyIntegrityChecker);

    KerberosKey verify(KerberosPrincipal kerberosPrincipal, byte[] bArr) throws SamException;
}
