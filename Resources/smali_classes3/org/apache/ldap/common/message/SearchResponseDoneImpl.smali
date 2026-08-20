.class public Lorg/apache/ldap/common/message/SearchResponseDoneImpl;
.super Lorg/apache/ldap/common/message/AbstractResultResponse;
.source "SearchResponseDoneImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SearchResponseDone;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResultResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractResultResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/SearchResponseDone;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method
