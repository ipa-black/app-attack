.class public Lorg/apache/ldap/common/LockException;
.super Ljava/lang/RuntimeException;
.source "LockException.java"


# instance fields
.field private final m_lockable:Lorg/apache/ldap/common/Lockable;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/Lockable;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lorg/apache/ldap/common/LockException;->m_lockable:Lorg/apache/ldap/common/Lockable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lorg/apache/ldap/common/LockException;->m_lockable:Lorg/apache/ldap/common/Lockable;

    return-void
.end method


# virtual methods
.method public getLockable()Lorg/apache/ldap/common/Lockable;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/ldap/common/LockException;->m_lockable:Lorg/apache/ldap/common/Lockable;

    return-object v0
.end method
