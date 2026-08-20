.class public interface abstract Lorg/apache/ldap/common/Lockable;
.super Ljava/lang/Object;
.source "Lockable.java"


# virtual methods
.method public abstract getLocked()Z
.end method

.method public abstract getParent()Lorg/apache/ldap/common/Lockable;
.end method

.method public abstract isLocked()Z
.end method

.method public abstract isUnlockable()Z
.end method

.method public abstract setLocked(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/LockException;
        }
    .end annotation
.end method
