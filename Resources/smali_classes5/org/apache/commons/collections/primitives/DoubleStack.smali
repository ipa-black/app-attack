.class public Lorg/apache/commons/collections/primitives/DoubleStack;
.super Ljava/lang/Object;
.source "DoubleStack.java"


# instance fields
.field private list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    return-void
.end method

.method public constructor <init>([D)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->add(D)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->clear()V

    return-void
.end method

.method public empty()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get(I)D
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public peek()D
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->get(I)D

    move-result-wide v0

    return-wide v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public peek(I)D
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->get(I)D

    move-result-wide v0

    return-wide v0

    .line 100
    :cond_0
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1
.end method

.method public pop()D
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->removeElementAt(I)D

    move-result-wide v0

    return-wide v0

    .line 117
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public push(D)D
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->add(D)Z

    return-wide p1
.end method

.method public search(D)I
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 151
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->get(I)D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 153
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/DoubleStack;->list:Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;->size()I

    move-result v0

    return v0
.end method
