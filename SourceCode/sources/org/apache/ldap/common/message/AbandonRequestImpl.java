package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class AbandonRequestImpl extends AbstractRequest implements AbandonRequest {
    private int abandonId;

    public AbandonRequestImpl(int i) {
        super(i, TYPE, false);
    }

    @Override // org.apache.ldap.common.message.AbandonRequest
    public int getAbandoned() {
        return this.abandonId;
    }

    @Override // org.apache.ldap.common.message.AbandonRequest
    public void setAbandoned(int i) {
        lockCheck("Attempt to alter locked AbandonRequest!");
        this.abandonId = i;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return super.equals(obj) && ((AbandonRequest) obj).getAbandoned() == this.abandonId;
    }
}
