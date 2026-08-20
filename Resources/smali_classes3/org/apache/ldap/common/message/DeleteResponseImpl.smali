.class public Lorg/apache/ldap/common/message/DeleteResponseImpl;
.super Lorg/apache/ldap/common/message/AbstractResultResponse;
.source "DeleteResponseImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/DeleteResponse;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/ldap/common/message/DeleteResponseImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResultResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    return-void
.end method
