.class public abstract Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;
.super Ljava/lang/Object;
.source "AbstractBooleanCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/BooleanCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Z)Z
    .locals 1

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add(boolean) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 2

    .line 44
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->add(Z)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    .line 53
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Z)Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 1

    .line 67
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->contains(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 2

    .line 91
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->removeElement(Z)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeElement(Z)Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 82
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 3

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/primitives/BooleanCollection;->contains(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public abstract size()I
.end method

.method public toArray()[Z
    .locals 4

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v3

    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Z)[Z
    .locals 3

    .line 119
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->toArray()[Z

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v2

    aput-boolean v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
