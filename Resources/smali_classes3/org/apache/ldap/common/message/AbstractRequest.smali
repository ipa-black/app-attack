.class public Lorg/apache/ldap/common/message/AbstractRequest;
.super Lorg/apache/ldap/common/message/AbstractMessage;
.source "AbstractRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Request;


# instance fields
.field private final m_hasResponse:Z


# direct methods
.method protected constructor <init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/message/AbstractMessage;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    .line 46
    iput-boolean p3, p0, Lorg/apache/ldap/common/message/AbstractRequest;->m_hasResponse:Z

    return-void
.end method


# virtual methods
.method public hasResponse()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/AbstractRequest;->m_hasResponse:Z

    return v0
.end method
