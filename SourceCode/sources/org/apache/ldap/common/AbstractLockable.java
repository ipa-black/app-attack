package org.apache.ldap.common;

import java.io.Serializable;
/* loaded from: classes3.dex */
public abstract class AbstractLockable implements Lockable, Serializable {
    private boolean m_isLocked;
    private boolean m_isUnlockable;
    private Lockable m_parent;

    public AbstractLockable() {
        this.m_isUnlockable = true;
        this.m_isLocked = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractLockable(boolean z) {
        this.m_isLocked = false;
        this.m_isUnlockable = z;
        this.m_parent = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractLockable(Lockable lockable, boolean z) {
        this.m_isLocked = false;
        this.m_isUnlockable = z;
        this.m_parent = lockable;
    }

    @Override // org.apache.ldap.common.Lockable
    public boolean isUnlockable() {
        Lockable lockable = this.m_parent;
        if (lockable == null) {
            return this.m_isUnlockable;
        }
        return lockable.isUnlockable();
    }

    @Override // org.apache.ldap.common.Lockable
    public boolean isLocked() {
        Lockable lockable = this.m_parent;
        if (lockable == null) {
            return this.m_isLocked;
        }
        return lockable.isLocked();
    }

    @Override // org.apache.ldap.common.Lockable
    public boolean getLocked() {
        Lockable lockable = this.m_parent;
        if (lockable == null) {
            return this.m_isLocked;
        }
        return lockable.isLocked();
    }

    @Override // org.apache.ldap.common.Lockable
    public void setLocked(boolean z) throws LockException {
        if (this.m_parent == null) {
            boolean z2 = this.m_isLocked;
            if (z2 == z) {
                return;
            }
            if (this.m_isUnlockable) {
                this.m_isLocked = z;
                return;
            } else if (z2) {
                throw new LockException(this, "Cannot unlock a \"permanent\" Lockable!");
            } else {
                return;
            }
        }
        throw new LockException(this, "Cannot [un]lock a non-root Lockable!");
    }

    @Override // org.apache.ldap.common.Lockable
    public Lockable getParent() {
        return this.m_parent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void lockCheck(String str) {
        if (isLocked()) {
            throw new LockException(this, str);
        }
    }

    protected void lockCheck() {
        if (isLocked()) {
            throw new LockException(this);
        }
    }
}
