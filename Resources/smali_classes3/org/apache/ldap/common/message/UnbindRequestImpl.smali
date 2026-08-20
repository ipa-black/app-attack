.class public Lorg/apache/ldap/common/message/UnbindRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "UnbindRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/UnbindRequest;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 37
    sget-object v0, Lorg/apache/ldap/common/message/UnbindRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    return-void
.end method
