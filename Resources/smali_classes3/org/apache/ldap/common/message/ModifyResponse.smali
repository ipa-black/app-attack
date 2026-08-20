.class public interface abstract Lorg/apache/ldap/common/message/ModifyResponse;
.super Ljava/lang/Object;
.source "ModifyResponse.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ResultResponse;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODIFYRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ModifyResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method
