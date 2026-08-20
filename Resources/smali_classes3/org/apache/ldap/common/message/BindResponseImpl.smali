.class public Lorg/apache/ldap/common/message/BindResponseImpl;
.super Lorg/apache/ldap/common/message/AbstractResultResponse;
.source "BindResponseImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/BindResponse;


# instance fields
.field private serverSaslCreds:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/ldap/common/message/BindResponseImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResultResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractResultResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 108
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/BindResponse;

    .line 110
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindResponse;->getServerSaslCreds()[B

    move-result-object p1

    .line 111
    iget-object v1, p0, Lorg/apache/ldap/common/message/BindResponseImpl;->serverSaslCreds:[B

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 123
    invoke-static {v1, p1}, Lorg/apache/ldap/common/util/ArrayUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getServerSaslCreds()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/common/message/BindResponseImpl;->serverSaslCreds:[B

    return-object v0
.end method

.method public setServerSaslCreds([B)V
    .locals 1

    .line 80
    const-string v0, "Attempt to alter serverSaslCreds on locked BindResponse!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/BindResponseImpl;->lockCheck(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/common/message/BindResponseImpl;->serverSaslCreds:[B

    return-void
.end method
