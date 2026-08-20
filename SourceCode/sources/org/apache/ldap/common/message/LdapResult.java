package org.apache.ldap.common.message;

import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public interface LdapResult extends Lockable {
    String getErrorMessage();

    String getMatchedDn();

    Referral getReferral();

    ResultCodeEnum getResultCode();

    boolean isReferral();

    void setErrorMessage(String str);

    void setMatchedDn(String str);

    void setReferral(Referral referral);

    void setResultCode(ResultCodeEnum resultCodeEnum);
}
