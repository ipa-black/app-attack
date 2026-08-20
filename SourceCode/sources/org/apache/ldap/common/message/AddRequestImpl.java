package org.apache.ldap.common.message;

import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public class AddRequestImpl extends AbstractRequest implements AddRequest {
    private Attributes entry;
    private String name;

    public AddRequestImpl(int i) {
        super(i, TYPE, true);
    }

    @Override // org.apache.ldap.common.message.AddRequest
    public String getName() {
        return this.name;
    }

    @Override // org.apache.ldap.common.message.AddRequest
    public void setName(String str) {
        lockCheck("Attempt to alter new entry name of locked AddRequest!");
        this.name = str;
    }

    @Override // org.apache.ldap.common.message.AddRequest
    public Attributes getEntry() {
        return this.entry;
    }

    @Override // org.apache.ldap.common.message.AddRequest
    public void setEntry(Attributes attributes) {
        lockCheck("Attempt to alter entry of locked AddRequest!");
        this.entry = attributes;
    }

    @Override // org.apache.ldap.common.message.SingleReplyRequest
    public MessageTypeEnum getResponseType() {
        return RESP_TYPE;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            AddRequest addRequest = (AddRequest) obj;
            if (this.name == null || addRequest.getName() != null) {
                if (this.name != null || addRequest.getName() == null) {
                    if (this.name == null || addRequest.getName() == null || this.name.equals(addRequest.getName())) {
                        if (this.entry == null || addRequest.getEntry() != null) {
                            if (this.entry != null || addRequest.getEntry() == null) {
                                return this.entry == null || addRequest.getEntry() == null || this.entry.equals(addRequest.getEntry());
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
