.class final Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;
.super Lorg/apache/ldap/common/util/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/util/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiLineToStringStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2099
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle;-><init>()V

    .line 2100
    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/ldap/common/util/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2102
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 2103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/ldap/common/util/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V
    .locals 0

    .line 2091
    invoke-direct {p0}, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2112
    sget-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method
