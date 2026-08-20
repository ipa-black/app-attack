.class public interface abstract Lorg/apache/ldap/common/message/SearchResponseDone;
.super Ljava/lang/Object;
.source "SearchResponseDone.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ResultResponse;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHRESDONE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/SearchResponseDone;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method
