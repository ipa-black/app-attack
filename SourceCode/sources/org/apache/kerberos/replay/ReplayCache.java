package org.apache.kerberos.replay;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public interface ReplayCache {
    boolean isReplay(KerberosTime kerberosTime, KerberosPrincipal kerberosPrincipal);

    void save(KerberosTime kerberosTime, KerberosPrincipal kerberosPrincipal);
}
