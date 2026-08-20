.class public Lorg/apache/ldap/common/message/ExtendedRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "ExtendedRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ExtendedRequest;


# instance fields
.field private oid:Ljava/lang/String;

.field private payload:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 52
    sget-object v0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 145
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/ExtendedRequest;

    .line 146
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->oid:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getOid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 151
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->oid:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getOid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 156
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->oid:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getOid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 158
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->oid:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 164
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->payload:[B

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getPayload()[B

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    .line 169
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->payload:[B

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getPayload()[B

    move-result-object v1

    if-eqz v1, :cond_6

    return v2

    .line 174
    :cond_6
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->payload:[B

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getPayload()[B

    move-result-object v1

    if-eqz v1, :cond_7

    .line 176
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->payload:[B

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedRequest;->getPayload()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/ldap/common/util/ArrayUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->payload:[B

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 123
    sget-object v0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 1

    .line 80
    const-string v0, "Attempt to alter OID of locked ExtendedRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->oid:Ljava/lang/String;

    return-void
.end method

.method public setPayload([B)V
    .locals 1

    .line 105
    const-string v0, "Attempt to alter payload of locked ExtendedRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;->payload:[B

    return-void
.end method
