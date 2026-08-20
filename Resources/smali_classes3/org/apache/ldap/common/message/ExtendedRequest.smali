.class public interface abstract Lorg/apache/ldap/common/message/ExtendedRequest;
.super Ljava/lang/Object;
.source "ExtendedRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->EXTENDEDREQ:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ExtendedRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 66
    sget-object v0, Lorg/apache/ldap/common/message/ExtendedResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/ExtendedRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getOid()Ljava/lang/String;
.end method

.method public abstract getPayload()[B
.end method

.method public abstract setOid(Ljava/lang/String;)V
.end method

.method public abstract setPayload([B)V
.end method
