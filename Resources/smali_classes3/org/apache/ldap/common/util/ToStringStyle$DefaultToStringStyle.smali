.class final Lorg/apache/ldap/common/util/ToStringStyle$DefaultToStringStyle;
.super Lorg/apache/ldap/common/util/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/util/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultToStringStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1972
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V
    .locals 0

    .line 1964
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle$DefaultToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1981
    sget-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method
