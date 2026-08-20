.class public abstract Lorg/apache/ldap/common/message/ControlImpl;
.super Lorg/apache/ldap/common/AbstractLockable;
.source "ControlImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Control;


# instance fields
.field private id:Ljava/lang/String;

.field private m_isCritical:Z

.field private m_oid:Ljava/lang/String;

.field private m_value:[B


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/Lockable;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/ldap/common/message/ControlImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/ldap/common/message/ControlImpl;->m_oid:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/common/message/ControlImpl;->m_value:[B

    return-object v0
.end method

.method public isCritical()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/ControlImpl;->m_isCritical:Z

    return v0
.end method

.method public setCritical(Z)V
    .locals 1

    .line 85
    const-string v0, "Attempt to alter criticality flag of locked Control!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ControlImpl;->lockCheck(Ljava/lang/String;)V

    .line 86
    iput-boolean p1, p0, Lorg/apache/ldap/common/message/ControlImpl;->m_isCritical:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .line 108
    const-string v0, "Attempt to alter OID of locked Control!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ControlImpl;->lockCheck(Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lorg/apache/ldap/common/message/ControlImpl;->m_oid:Ljava/lang/String;

    return-void
.end method

.method public setValue([B)V
    .locals 1

    .line 133
    const-string v0, "Attempt to alter encoded values of locked Control!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ControlImpl;->lockCheck(Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lorg/apache/ldap/common/message/ControlImpl;->m_value:[B

    return-void
.end method
