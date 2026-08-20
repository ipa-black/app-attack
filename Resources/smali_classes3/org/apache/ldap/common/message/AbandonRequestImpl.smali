.class public Lorg/apache/ldap/common/message/AbandonRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "AbandonRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/AbandonRequest;


# instance fields
.field private abandonId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 41
    sget-object v0, Lorg/apache/ldap/common/message/AbandonRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 88
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/AbandonRequest;

    .line 89
    invoke-interface {p1}, Lorg/apache/ldap/common/message/AbandonRequest;->getAbandoned()I

    move-result p1

    iget v1, p0, Lorg/apache/ldap/common/message/AbandonRequestImpl;->abandonId:I

    if-eq p1, v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getAbandoned()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/ldap/common/message/AbandonRequestImpl;->abandonId:I

    return v0
.end method

.method public setAbandoned(I)V
    .locals 1

    .line 63
    const-string v0, "Attempt to alter locked AbandonRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/AbandonRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 64
    iput p1, p0, Lorg/apache/ldap/common/message/AbandonRequestImpl;->abandonId:I

    return-void
.end method
