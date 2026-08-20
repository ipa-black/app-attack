.class public Lorg/apache/mina/util/Stack;
.super Ljava/lang/Object;
.source "Stack.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x4

.field private static final serialVersionUID:J = 0x3139303133323038L


# instance fields
.field private items:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lorg/apache/mina/util/Stack;->size:I

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/apache/mina/util/Stack;->size:I

    return-void
.end method

.method public first()Ljava/lang/Object;
    .locals 2

    .line 118
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2

    .line 128
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 5

    .line 65
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 71
    iget-object v3, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 72
    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    .line 73
    iput v0, p0, Lorg/apache/mina/util/Stack;->size:I

    return-object v4
.end method

.method public push(Ljava/lang/Object;)V
    .locals 4

    .line 83
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    iget-object v1, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 86
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 88
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v2, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/Stack;->size:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 93
    iput v1, p0, Lorg/apache/mina/util/Stack;->size:I

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3

    .line 98
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 100
    iget-object v1, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    .line 102
    iget v2, p0, Lorg/apache/mina/util/Stack;->size:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object p1, p0, Lorg/apache/mina/util/Stack;->items:[Ljava/lang/Object;

    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    .line 104
    iput v0, p0, Lorg/apache/mina/util/Stack;->size:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/apache/mina/util/Stack;->size:I

    return v0
.end method
