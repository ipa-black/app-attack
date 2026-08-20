.class public abstract Lorg/apache/ldap/common/AbstractLockable;
.super Ljava/lang/Object;
.source "AbstractLockable.java"

# interfaces
.implements Lorg/apache/ldap/common/Lockable;
.implements Ljava/io/Serializable;


# instance fields
.field private m_isLocked:Z

.field private m_isUnlockable:Z

.field private m_parent:Lorg/apache/ldap/common/Lockable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isUnlockable:Z

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    return-void
.end method

.method protected constructor <init>(Lorg/apache/ldap/common/Lockable;Z)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    .line 78
    iput-boolean p2, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isUnlockable:Z

    .line 79
    iput-object p1, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    .line 62
    iput-boolean p1, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isUnlockable:Z

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    return-void
.end method


# virtual methods
.method public getLocked()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    if-nez v0, :cond_0

    .line 129
    iget-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    return v0

    .line 132
    :cond_0
    invoke-interface {v0}, Lorg/apache/ldap/common/Lockable;->isLocked()Z

    move-result v0

    return v0
.end method

.method public getParent()Lorg/apache/ldap/common/Lockable;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    if-nez v0, :cond_0

    .line 112
    iget-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    return v0

    .line 115
    :cond_0
    invoke-interface {v0}, Lorg/apache/ldap/common/Lockable;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isUnlockable()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    if-nez v0, :cond_0

    .line 95
    iget-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isUnlockable:Z

    return v0

    .line 98
    :cond_0
    invoke-interface {v0}, Lorg/apache/ldap/common/Lockable;->isUnlockable()Z

    move-result v0

    return v0
.end method

.method protected lockCheck()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lorg/apache/ldap/common/AbstractLockable;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/LockException;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/LockException;-><init>(Lorg/apache/ldap/common/Lockable;)V

    throw v0
.end method

.method protected lockCheck(Ljava/lang/String;)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lorg/apache/ldap/common/AbstractLockable;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/LockException;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/common/LockException;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    throw v0
.end method

.method public setLocked(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/LockException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_parent:Lorg/apache/ldap/common/Lockable;

    if-nez v0, :cond_3

    .line 155
    iget-boolean v0, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isUnlockable:Z

    if-eqz v1, :cond_1

    .line 163
    iput-boolean p1, p0, Lorg/apache/ldap/common/AbstractLockable;->m_isLocked:Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 167
    :cond_2
    new-instance p1, Lorg/apache/ldap/common/LockException;

    const-string v0, "Cannot unlock a \"permanent\" Lockable!"

    invoke-direct {p1, p0, v0}, Lorg/apache/ldap/common/LockException;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_3
    new-instance p1, Lorg/apache/ldap/common/LockException;

    const-string v0, "Cannot [un]lock a non-root Lockable!"

    invoke-direct {p1, p0, v0}, Lorg/apache/ldap/common/LockException;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    throw p1
.end method
