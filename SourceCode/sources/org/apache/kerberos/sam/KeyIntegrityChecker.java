package org.apache.kerberos.sam;

import javax.security.auth.kerberos.KerberosKey;
/* loaded from: classes5.dex */
public interface KeyIntegrityChecker {
    boolean checkKeyIntegrity(byte[] bArr, KerberosKey kerberosKey);
}
