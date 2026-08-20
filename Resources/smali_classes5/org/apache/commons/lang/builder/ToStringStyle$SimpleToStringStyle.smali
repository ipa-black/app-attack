.class final Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/commons/lang/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2048
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2049
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseClassName(Z)V

    .line 2050
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2051
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseFieldNames(Z)V

    .line 2052
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang/builder/ToStringStyle$1;)V
    .locals 0

    .line 2040
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2061
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method
