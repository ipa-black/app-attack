.class public interface abstract Lorg/apache/ldap/common/message/BindResponse;
.super Ljava/lang/Object;
.source "BindResponse.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ResultResponse;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->BINDRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/BindResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getServerSaslCreds()[B
.end method

.method public abstract setServerSaslCreds([B)V
.end method
