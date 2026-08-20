package org.apache.ldap.common.message;

import org.apache.ldap.common.AbstractLockable;
import org.apache.ldap.common.Lockable;
/* loaded from: classes3.dex */
public abstract class ControlImpl extends AbstractLockable implements Control {
    private String id;
    private boolean m_isCritical;
    private String m_oid;
    private byte[] m_value;

    public ControlImpl(Lockable lockable) {
        super(lockable, false);
    }

    @Override // org.apache.ldap.common.message.Control
    public boolean isCritical() {
        return this.m_isCritical;
    }

    @Override // org.apache.ldap.common.message.Control
    public void setCritical(boolean z) {
        lockCheck("Attempt to alter criticality flag of locked Control!");
        this.m_isCritical = z;
    }

    @Override // org.apache.ldap.common.message.Control
    public String getType() {
        return this.m_oid;
    }

    @Override // org.apache.ldap.common.message.Control
    public void setType(String str) {
        lockCheck("Attempt to alter OID of locked Control!");
        this.m_oid = str;
    }

    @Override // org.apache.ldap.common.message.Control
    public byte[] getValue() {
        return this.m_value;
    }

    @Override // org.apache.ldap.common.message.Control
    public void setValue(byte[] bArr) {
        lockCheck("Attempt to alter encoded values of locked Control!");
        this.m_value = bArr;
    }

    public String getID() {
        return this.id;
    }
}
