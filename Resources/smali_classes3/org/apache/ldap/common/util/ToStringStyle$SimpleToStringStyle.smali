.class final Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/ldap/common/util/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/util/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2065
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2066
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    .line 2067
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2068
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    .line 2069
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V
    .locals 0

    .line 2057
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2078
    sget-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method
