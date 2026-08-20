.class final Lorg/apache/ldap/common/util/ToStringStyle$NoFieldNameToStringStyle;
.super Lorg/apache/ldap/common/util/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/util/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFieldNameToStringStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2003
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2004
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$NoFieldNameToStringStyle;->setUseFieldNames(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V
    .locals 0

    .line 1995
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2013
    sget-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method
