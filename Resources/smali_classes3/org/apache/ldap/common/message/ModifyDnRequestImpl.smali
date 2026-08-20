.class public Lorg/apache/ldap/common/message/ModifyDnRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "ModifyDnRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ModifyDnRequest;


# instance fields
.field private m_deleteOldRdn:Z

.field private m_name:Ljava/lang/String;

.field private m_newRdn:Ljava/lang/String;

.field private m_newSuperior:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 53
    sget-object v0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_deleteOldRdn:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 223
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 228
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_name:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 233
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 235
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 241
    :cond_4
    iget-boolean v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_deleteOldRdn:Z

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getDeleteOldRdn()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 246
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newRdn:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    return v2

    .line 251
    :cond_6
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newRdn:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    return v2

    .line 256
    :cond_7
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newRdn:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 258
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newRdn:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 264
    :cond_8
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewSuperior()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    return v2

    .line 269
    :cond_9
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    if-nez v1, :cond_a

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewSuperior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    return v2

    .line 274
    :cond_a
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewSuperior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 276
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewSuperior()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getDeleteOldRdn()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_deleteOldRdn:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewRdn()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newRdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSuperior()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 198
    sget-object v0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public isMove()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeleteOldRdn(Z)V
    .locals 1

    .line 85
    const-string v0, "Attempt to toggle deleteOldRdn flag of locked ModifyDnRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_deleteOldRdn:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 125
    const-string v0, "Attempt to alter entry name on locked ModifyDnRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setNewRdn(Ljava/lang/String;)V
    .locals 1

    .line 150
    const-string v0, "Atttempt to alter the newRdn of locked ModifyDnRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newRdn:Ljava/lang/String;

    return-void
.end method

.method public setNewSuperior(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;->m_newSuperior:Ljava/lang/String;

    return-void
.end method
