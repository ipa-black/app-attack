.class public interface abstract Lorg/apache/ldap/common/message/ModifyDnRequest;
.super Ljava/lang/Object;
.source "ModifyDnRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODDNREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ModifyDnRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 77
    sget-object v0, Lorg/apache/ldap/common/message/ModifyDnResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ModifyDnRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getDeleteOldRdn()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNewRdn()Ljava/lang/String;
.end method

.method public abstract getNewSuperior()Ljava/lang/String;
.end method

.method public abstract isMove()Z
.end method

.method public abstract setDeleteOldRdn(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNewRdn(Ljava/lang/String;)V
.end method

.method public abstract setNewSuperior(Ljava/lang/String;)V
.end method
