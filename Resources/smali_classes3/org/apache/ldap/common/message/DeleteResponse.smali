.class public interface abstract Lorg/apache/ldap/common/message/DeleteResponse;
.super Ljava/lang/Object;
.source "DeleteResponse.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ResultResponse;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->DELRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/DeleteResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method
