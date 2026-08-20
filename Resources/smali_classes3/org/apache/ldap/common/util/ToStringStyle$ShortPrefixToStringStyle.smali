.class final Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;
.super Lorg/apache/ldap/common/util/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/util/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortPrefixToStringStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2035
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle;-><init>()V

    const/4 v0, 0x1

    .line 2036
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;->setUseShortClassName(Z)V

    const/4 v0, 0x0

    .line 2037
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;->setUseIdentityHashCode(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V
    .locals 0

    .line 2027
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2045
    sget-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method
