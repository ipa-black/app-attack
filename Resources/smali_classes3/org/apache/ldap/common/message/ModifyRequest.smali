.class public interface abstract Lorg/apache/ldap/common/message/ModifyRequest;
.super Ljava/lang/Object;
.source "ModifyRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODIFYREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ModifyRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 108
    sget-object v0, Lorg/apache/ldap/common/message/ModifyResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ModifyRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract addModification(Ljavax/naming/directory/ModificationItem;)V
.end method

.method public abstract getModificationItems()Ljava/util/Collection;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract removeModification(Ljavax/naming/directory/ModificationItem;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
