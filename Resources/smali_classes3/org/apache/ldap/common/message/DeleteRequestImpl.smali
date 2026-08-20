.class public Lorg/apache/ldap/common/message/DeleteRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "DeleteRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/DeleteRequest;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 47
    sget-object v0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/DeleteRequest;

    .line 122
    iget-object v1, p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 127
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 132
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/DeleteRequest;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 94
    sget-object v0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 76
    const-string v0, "Attempt to alter entry name of locked DeleteRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/DeleteRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;->name:Ljava/lang/String;

    return-void
.end method
