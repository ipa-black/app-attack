.class public Lorg/apache/commons/collections/primitives/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private list:Lorg/apache/commons/collections/primitives/ArrayIntList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    const/4 v0, 0x0

    .line 42
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/primitives/ArrayIntList;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->clear()V

    return-void
.end method

.method public empty()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ArrayIntList;->get(I)I

    move-result p1

    return p1
.end method

.method public peek()I
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayIntList;->get(I)I

    move-result v0

    return v0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public peek(I)I
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayIntList;->get(I)I

    move-result p1

    return p1

    .line 91
    :cond_0
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1
.end method

.method public pop()I
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayIntList;->removeElementAt(I)I

    move-result v0

    return v0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public push(I)I
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ArrayIntList;->add(I)Z

    return p1
.end method

.method public search(I)I
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 143
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 145
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/ArrayIntList;->size()I

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

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/IntStack;->list:Lorg/apache/commons/collections/primitives/ArrayIntList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ArrayIntList;->size()I

    move-result v0

    return v0
.end method
