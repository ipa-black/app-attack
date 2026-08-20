.class public interface abstract Lorg/apache/ldap/common/message/ExtendedResponse;
.super Ljava/lang/Object;
.source "ExtendedResponse.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ResultResponse;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->EXTENDEDRESP:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ExtendedResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getResponse()[B
.end method

.method public abstract getResponseName()Ljava/lang/String;
.end method

.method public abstract setResponse([B)V
.end method

.method public abstract setResponseName(Ljava/lang/String;)V
.end method
