.class Lorg/apache/commons/lang/Entities$ArrayEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lorg/apache/commons/lang/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEntityMap"
.end annotation


# instance fields
.field protected growBy:I

.field protected names:[Ljava/lang/String;

.field protected size:I

.field protected values:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 503
    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    const/4 v1, 0x0

    .line 504
    iput v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    .line 509
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 510
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    .line 514
    iput p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    .line 515
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 516
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2

    .line 520
    iget v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->ensureCapacity(I)V

    .line 521
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    aput-object p1, v0, v1

    .line 522
    iget-object p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 523
    iput v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 4

    .line 527
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 528
    iget v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->growBy:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 529
    new-array v0, p1, [Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iput-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 532
    new-array p1, p1, [I

    .line 533
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    iput-object p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    :cond_0
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 539
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 540
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 541
    iget-object p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public value(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 548
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 549
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    iget-object p1, p0, Lorg/apache/commons/lang/Entities$ArrayEntityMap;->values:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
