.class public Lorg/apache/mina/util/Queue;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x4

.field private static final DEFAULT_MASK:I = 0x3

.field private static final serialVersionUID:J = 0x3539323130383539L


# instance fields
.field private first:I

.field private items:[Ljava/lang/Object;

.field private last:I

.field private mask:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/apache/mina/util/Queue;->first:I

    .line 44
    iput v0, p0, Lorg/apache/mina/util/Queue;->last:I

    .line 46
    iput v0, p0, Lorg/apache/mina/util/Queue;->size:I

    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lorg/apache/mina/util/Queue;->mask:I

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/apache/mina/util/Queue;->first:I

    .line 72
    iput v0, p0, Lorg/apache/mina/util/Queue;->last:I

    .line 73
    iput v0, p0, Lorg/apache/mina/util/Queue;->size:I

    return-void
.end method

.method public first()Ljava/lang/Object;
    .locals 2

    .line 138
    iget v0, p0, Lorg/apache/mina/util/Queue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/Queue;->first:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/Queue;->first:I

    add-int/2addr v1, p1

    iget p1, p0, Lorg/apache/mina/util/Queue;->mask:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 166
    iget v0, p0, Lorg/apache/mina/util/Queue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3

    .line 148
    iget v0, p0, Lorg/apache/mina/util/Queue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/Queue;->last:I

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/apache/mina/util/Queue;->mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 5

    .line 84
    iget v0, p0, Lorg/apache/mina/util/Queue;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/Queue;->first:I

    aget-object v4, v2, v3

    .line 90
    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 91
    iget v1, p0, Lorg/apache/mina/util/Queue;->mask:I

    and-int/2addr v1, v3

    iput v1, p0, Lorg/apache/mina/util/Queue;->first:I

    add-int/lit8 v0, v0, -0x1

    .line 93
    iput v0, p0, Lorg/apache/mina/util/Queue;->size:I

    return-object v4
.end method

.method public push(Ljava/lang/Object;)V
    .locals 7

    .line 103
    iget v0, p0, Lorg/apache/mina/util/Queue;->size:I

    iget-object v1, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 106
    array-length v0, v1

    mul-int/lit8 v2, v0, 0x2

    .line 107
    new-array v3, v2, [Ljava/lang/Object;

    .line 109
    iget v4, p0, Lorg/apache/mina/util/Queue;->first:I

    iget v5, p0, Lorg/apache/mina/util/Queue;->last:I

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    sub-int/2addr v5, v4

    .line 111
    invoke-static {v1, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sub-int v5, v0, v4

    .line 115
    invoke-static {v1, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v1, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/Queue;->first:I

    sub-int v4, v0, v4

    iget v5, p0, Lorg/apache/mina/util/Queue;->last:I

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :goto_0
    iput v6, p0, Lorg/apache/mina/util/Queue;->first:I

    .line 120
    iput v0, p0, Lorg/apache/mina/util/Queue;->last:I

    .line 121
    iput-object v3, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    .line 122
    iput v2, p0, Lorg/apache/mina/util/Queue;->mask:I

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/util/Queue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/Queue;->last:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 126
    iget p1, p0, Lorg/apache/mina/util/Queue;->mask:I

    and-int/2addr p1, v1

    iput p1, p0, Lorg/apache/mina/util/Queue;->last:I

    .line 127
    iget p1, p0, Lorg/apache/mina/util/Queue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/mina/util/Queue;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/apache/mina/util/Queue;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "first="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/util/Queue;->first:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/Queue;->last:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/Queue;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/Queue;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
