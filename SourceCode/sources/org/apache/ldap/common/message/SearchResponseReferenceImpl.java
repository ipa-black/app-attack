package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class SearchResponseReferenceImpl extends AbstractResponse implements SearchResponseReference {
    private Referral m_referral;

    public SearchResponseReferenceImpl(int i) {
        super(i, TYPE);
    }

    @Override // org.apache.ldap.common.message.SearchResponseReference
    public Referral getReferral() {
        return this.m_referral;
    }

    @Override // org.apache.ldap.common.message.SearchResponseReference
    public void setReferral(Referral referral) {
        lockCheck("Attempt to alter referrals of a locked SearchRequestReference!");
        this.m_referral = referral;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            SearchResponseReference searchResponseReference = (SearchResponseReference) obj;
            if (this.m_referral == null || searchResponseReference.getReferral() != null) {
                if (this.m_referral != null || searchResponseReference.getReferral() == null) {
                    return this.m_referral == null || searchResponseReference.getReferral() == null || this.m_referral.equals(searchResponseReference.getReferral());
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
