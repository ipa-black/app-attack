.class public abstract Lorg/apache/ldap/common/message/AbstractResultResponse;
.super Lorg/apache/ldap/common/message/AbstractResponse;
.source "AbstractResultResponse.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ResultResponse;


# instance fields
.field private result:Lorg/apache/ldap/common/message/LdapResult;


# direct methods
.method protected constructor <init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/message/AbstractResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    instance-of v1, p1, Lorg/apache/ldap/common/message/ResultResponse;

    if-nez v1, :cond_2

    return v2

    .line 109
    :cond_2
    check-cast p1, Lorg/apache/ldap/common/message/ResultResponse;

    .line 111
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/AbstractResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    .line 116
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/AbstractResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    if-eqz v1, :cond_4

    return v2

    .line 121
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/AbstractResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 123
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/AbstractResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getLdapResult()Lorg/apache/ldap/common/message/LdapResult;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractResultResponse;->result:Lorg/apache/ldap/common/message/LdapResult;

    return-object v0
.end method

.method public setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V
    .locals 1

    .line 76
    const-string v0, "Attempt to alter the LdapResult for a locked Response!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/AbstractResultResponse;->lockCheck(Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lorg/apache/ldap/common/message/AbstractResultResponse;->result:Lorg/apache/ldap/common/message/LdapResult;

    return-void
.end method
