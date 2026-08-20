package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public interface ResultResponse extends Response {
    LdapResult getLdapResult();

    void setLdapResult(LdapResult ldapResult);
}
