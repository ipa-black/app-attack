package org.apache.ldap.common.ldif;
/* loaded from: classes3.dex */
public interface LdifIteratorMonitor {
    void failure(String str, Throwable th);

    void fatalFailure(String str, Throwable th);

    void infoAvailable(String str);
}
