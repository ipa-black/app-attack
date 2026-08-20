.class public Lorg/apache/commons/lang/math/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field public static final JVM_RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/commons/lang/math/JVMRandom;

    invoke-direct {v0}, Lorg/apache/commons/lang/math/JVMRandom;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nextBoolean()Z
    .locals 1

    .line 123
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextBoolean(Ljava/util/Random;)Z

    move-result v0

    return v0
.end method

.method public static nextBoolean(Ljava/util/Random;)Z
    .locals 0

    .line 126
    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public static nextDouble()D
    .locals 2

    .line 147
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextDouble(Ljava/util/Random;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(Ljava/util/Random;)D
    .locals 2

    .line 150
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextFloat()F
    .locals 1

    .line 136
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextFloat(Ljava/util/Random;)F

    move-result v0

    return v0
.end method

.method public static nextFloat(Ljava/util/Random;)F
    .locals 0

    .line 139
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    return p0
.end method

.method public static nextInt()I
    .locals 1

    .line 83
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(Ljava/util/Random;)I

    move-result v0

    return v0
.end method

.method public static nextInt(I)I
    .locals 1

    .line 98
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(Ljava/util/Random;I)I

    move-result p0

    return p0
.end method

.method public static nextInt(Ljava/util/Random;)I
    .locals 0

    .line 86
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public static nextInt(Ljava/util/Random;I)I
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static nextLong()J
    .locals 2

    .line 111
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextLong(Ljava/util/Random;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(Ljava/util/Random;)J
    .locals 2

    .line 114
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
