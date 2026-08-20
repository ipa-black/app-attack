.class public interface abstract Lorg/apache/ldap/common/message/DeleteRequest;
.super Ljava/lang/Object;
.source "DeleteRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->DELREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/DeleteRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 43
    sget-object v0, Lorg/apache/ldap/common/message/DeleteResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/DeleteRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
