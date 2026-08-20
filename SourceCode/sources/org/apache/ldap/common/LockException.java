package org.apache.ldap.common;
/* loaded from: classes3.dex */
public class LockException extends RuntimeException {
    private final Lockable m_lockable;

    public LockException(Lockable lockable) {
        this.m_lockable = null;
    }

    public LockException(Lockable lockable, String str) {
        super(str);
        this.m_lockable = lockable;
    }

    public Lockable getLockable() {
        return this.m_lockable;
    }
}
