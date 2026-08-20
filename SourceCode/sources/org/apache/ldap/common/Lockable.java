package org.apache.ldap.common;
/* loaded from: classes3.dex */
public interface Lockable {
    boolean getLocked();

    Lockable getParent();

    boolean isLocked();

    boolean isUnlockable();

    void setLocked(boolean z) throws LockException;
}
