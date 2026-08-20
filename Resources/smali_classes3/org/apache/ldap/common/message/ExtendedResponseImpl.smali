.class public Lorg/apache/ldap/common/message/ExtendedResponseImpl;
.super Lorg/apache/ldap/common/message/AbstractResultResponse;
.source "ExtendedResponseImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ExtendedResponse;


# instance fields
.field private oid:Ljava/lang/String;

.field private value:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResultResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractResultResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 128
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/ExtendedResponse;

    .line 130
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->oid:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponseName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 135
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->oid:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 140
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->oid:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 142
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->oid:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 148
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->value:[B

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponse()[B

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    .line 153
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->value:[B

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponse()[B

    move-result-object v1

    if-eqz v1, :cond_6

    return v2

    .line 158
    :cond_6
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->value:[B

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponse()[B

    move-result-object v1

    if-eqz v1, :cond_7

    .line 160
    iget-object v1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->value:[B

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ExtendedResponse;->getResponse()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/ldap/common/util/ArrayUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getResponse()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->value:[B

    return-object v0
.end method

.method public getResponseName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public setResponse([B)V
    .locals 1

    .line 78
    const-string v0, "Attempt to alter response value in locked ExtendedResponse!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->lockCheck(Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->value:[B

    return-void
.end method

.method public setResponseName(Ljava/lang/String;)V
    .locals 1

    .line 104
    const-string v0, "Attempt to alter responseName in locked ExtendedResponse!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->lockCheck(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;->oid:Ljava/lang/String;

    return-void
.end method
