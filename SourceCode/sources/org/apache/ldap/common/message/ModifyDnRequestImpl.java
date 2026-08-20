package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class ModifyDnRequestImpl extends AbstractRequest implements ModifyDnRequest {
    private boolean m_deleteOldRdn;
    private String m_name;
    private String m_newRdn;
    private String m_newSuperior;

    public ModifyDnRequestImpl(int i) {
        super(i, TYPE, true);
        this.m_deleteOldRdn = false;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public boolean getDeleteOldRdn() {
        return this.m_deleteOldRdn;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public void setDeleteOldRdn(boolean z) {
        lockCheck("Attempt to toggle deleteOldRdn flag of locked ModifyDnRequest!");
        this.m_deleteOldRdn = z;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public boolean isMove() {
        return this.m_newSuperior != null;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public String getName() {
        return this.m_name;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public void setName(String str) {
        lockCheck("Attempt to alter entry name on locked ModifyDnRequest!");
        this.m_name = str;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public String getNewRdn() {
        return this.m_newRdn;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public void setNewRdn(String str) {
        lockCheck("Atttempt to alter the newRdn of locked ModifyDnRequest!");
        this.m_newRdn = str;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public String getNewSuperior() {
        return this.m_newSuperior;
    }

    @Override // org.apache.ldap.common.message.ModifyDnRequest
    public void setNewSuperior(String str) {
        this.m_newSuperior = str;
    }

    @Override // org.apache.ldap.common.message.SingleReplyRequest
    public MessageTypeEnum getResponseType() {
        return RESP_TYPE;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            ModifyDnRequest modifyDnRequest = (ModifyDnRequest) obj;
            if (this.m_name == null || modifyDnRequest.getName() != null) {
                if (this.m_name != null || modifyDnRequest.getName() == null) {
                    if ((this.m_name == null || modifyDnRequest.getName() == null || this.m_name.equals(modifyDnRequest.getName())) && this.m_deleteOldRdn == modifyDnRequest.getDeleteOldRdn()) {
                        if (this.m_newRdn == null || modifyDnRequest.getNewRdn() != null) {
                            if (this.m_newRdn != null || modifyDnRequest.getNewRdn() == null) {
                                if (this.m_newRdn == null || modifyDnRequest.getNewRdn() == null || this.m_newRdn.equals(modifyDnRequest.getNewRdn())) {
                                    if (this.m_newSuperior == null || modifyDnRequest.getNewSuperior() != null) {
                                        if (this.m_newSuperior != null || modifyDnRequest.getNewSuperior() == null) {
                                            return this.m_newSuperior == null || modifyDnRequest.getNewSuperior() == null || this.m_newSuperior.equals(modifyDnRequest.getNewSuperior());
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
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
