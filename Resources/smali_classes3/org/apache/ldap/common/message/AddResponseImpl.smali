.class public Lorg/apache/ldap/common/message/AddResponseImpl;
.super Lorg/apache/ldap/common/message/AbstractResultResponse;
.source "AddResponseImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/AddResponse;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/ldap/common/message/AddResponseImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResultResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method
