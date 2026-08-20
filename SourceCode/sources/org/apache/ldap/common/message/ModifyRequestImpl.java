package org.apache.ldap.common.message;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import javax.naming.directory.ModificationItem;
/* loaded from: classes3.dex */
public class ModifyRequestImpl extends AbstractRequest implements ModifyRequest {
    private ArrayList mods;
    private String name;

    public ModifyRequestImpl(int i) {
        super(i, TYPE, true);
        this.mods = new ArrayList();
    }

    @Override // org.apache.ldap.common.message.ModifyRequest
    public Collection getModificationItems() {
        return Collections.unmodifiableCollection(this.mods);
    }

    @Override // org.apache.ldap.common.message.ModifyRequest
    public String getName() {
        return this.name;
    }

    @Override // org.apache.ldap.common.message.ModifyRequest
    public void setName(String str) {
        lockCheck("Attempt to alter object name of locked ModifyRequest!");
        this.name = str;
    }

    @Override // org.apache.ldap.common.message.ModifyRequest
    public void addModification(ModificationItem modificationItem) {
        lockCheck("Attempt to add modification to locked ModifyRequest!");
        this.mods.add(modificationItem);
    }

    @Override // org.apache.ldap.common.message.ModifyRequest
    public void removeModification(ModificationItem modificationItem) {
        lockCheck("Attempt to remove modification to locked ModifyRequest!");
        this.mods.remove(modificationItem);
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
            ModifyRequest modifyRequest = (ModifyRequest) obj;
            if (this.name == null || modifyRequest.getName() != null) {
                if (this.name != null || modifyRequest.getName() == null) {
                    if ((this.name == null || modifyRequest.getName() == null || this.name.equals(modifyRequest.getName())) && modifyRequest.getModificationItems().size() == this.mods.size()) {
                        Iterator it = modifyRequest.getModificationItems().iterator();
                        for (int i = 0; i < this.mods.size(); i++) {
                            if (!equals((ModificationItem) this.mods.get(i), (ModificationItem) it.next())) {
                                return false;
                            }
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

    private boolean equals(ModificationItem modificationItem, ModificationItem modificationItem2) {
        if (modificationItem == modificationItem2) {
            return true;
        }
        return modificationItem.getModificationOp() == modificationItem2.getModificationOp() && modificationItem.getAttribute().getID().equals(modificationItem2.getAttribute().getID());
    }
}
