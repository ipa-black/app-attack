.class public interface abstract Lorg/apache/ldap/common/message/SearchResponseReference;
.super Ljava/lang/Object;
.source "SearchResponseReference.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Response;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHRESREF:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/SearchResponseReference;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getReferral()Lorg/apache/ldap/common/message/Referral;
.end method

.method public abstract setReferral(Lorg/apache/ldap/common/message/Referral;)V
.end method
