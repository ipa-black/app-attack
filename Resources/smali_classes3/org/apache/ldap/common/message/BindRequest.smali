.class public interface abstract Lorg/apache/ldap/common/message/BindRequest;
.super Ljava/lang/Object;
.source "BindRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->BINDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/BindRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 33
    sget-object v0, Lorg/apache/ldap/common/message/BindResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/BindRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getCredentials()[B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSimple()Z
.end method

.method public abstract getVersion3()Z
.end method

.method public abstract isSimple()Z
.end method

.method public abstract isVersion3()Z
.end method

.method public abstract setCredentials([B)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSimple(Z)V
.end method

.method public abstract setVersion3(Z)V
.end method
