.class public interface abstract Lorg/apache/ldap/common/message/CompareRequest;
.super Ljava/lang/Object;
.source "CompareRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->COMPAREREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/CompareRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 44
    sget-object v0, Lorg/apache/ldap/common/message/CompareResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/CompareRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getAssertionValue()Ljava/lang/String;
.end method

.method public abstract getAttributeId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setAssertionValue(Ljava/lang/String;)V
.end method

.method public abstract setAttributeId(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
