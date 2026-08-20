.class public interface abstract Lorg/apache/ldap/common/message/AbandonRequest;
.super Ljava/lang/Object;
.source "AbandonRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Request;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->ABANDONREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/AbandonRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getAbandoned()I
.end method

.method public abstract setAbandoned(I)V
.end method
