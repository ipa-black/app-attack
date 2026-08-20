package org.apache.ldap.common.message;

import org.apache.ldap.common.AbstractLockable;
import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public class LdapResultImpl extends AbstractLockable implements LdapResult {
    private String errorMessage;
    private String matchedDn;
    private Referral referral;
    private ResultCodeEnum resultCode;

    public LdapResultImpl(Lockable lockable) {
        super(lockable, false);
        this.resultCode = ResultCodeEnum.SUCCESS;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public String getErrorMessage() {
        return this.errorMessage;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public void setErrorMessage(String str) {
        lockCheck("Attempt to alter error message of locked LdapResult!");
        this.errorMessage = str;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public String getMatchedDn() {
        return this.matchedDn;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public void setMatchedDn(String str) {
        lockCheck("Attempt to alter matchedDn of locked LdapResult!");
        this.matchedDn = str;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public ResultCodeEnum getResultCode() {
        return this.resultCode;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public void setResultCode(ResultCodeEnum resultCodeEnum) {
        lockCheck("Attempt to alter the resultCode of a locked LdapResult!");
        this.resultCode = resultCodeEnum;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public Referral getReferral() {
        return this.referral;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public boolean isReferral() {
        return this.referral != null;
    }

    @Override // org.apache.ldap.common.message.LdapResult
    public void setReferral(Referral referral) {
        lockCheck("Attempt to alter the referral of a locked LdapResult!");
        this.referral = referral;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LdapResult) {
            LdapResult ldapResult = (LdapResult) obj;
            if (this.referral != null || ldapResult.getReferral() == null) {
                if (ldapResult.getReferral() != null || this.referral == null) {
                    if ((this.referral == null || ldapResult.getReferral() == null || this.referral.equals(ldapResult.getReferral())) && this.resultCode.equals(ldapResult.getResultCode())) {
                        String str = this.errorMessage;
                        String errorMessage = ldapResult.getErrorMessage();
                        if (str == null) {
                            str = "";
                        }
                        if (errorMessage == null) {
                            errorMessage = "";
                        }
                        if (str.equals(errorMessage)) {
                            String str2 = this.matchedDn;
                            if (str2 != null) {
                                if (!str2.equals(ldapResult.getMatchedDn())) {
                                    return false;
                                }
                            } else if (ldapResult.getMatchedDn() != null) {
                                return false;
                            }
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
