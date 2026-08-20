.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;
.source "BaseUnmodifiableLongList.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(IJ)V
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This LongList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(J)Z
    .locals 0

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This LongList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(ILorg/apache/commons/collections/primitives/LongCollection;)Z
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This LongList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(Lorg/apache/commons/collections/primitives/LongCollection;)Z
    .locals 1

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This LongList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This LongList is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final iterator()Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongList;->iterator()Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;->wrap(Lorg/apache/commons/collections/primitives/LongIterator;)Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongList;->listIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongListIterator;->wrap(Lorg/apache/commons/collections/primitives/LongListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/LongList;->listIterator(I)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongListIterator;->wrap(Lorg/apache/commons/collections/primitives/LongListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll(Lorg/apache/commons/collections/primitives/LongCollection;)Z
    .locals 1

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This LongList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeElement(J)Z
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This LongList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeElementAt(I)J
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This LongList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final retainAll(Lorg/apache/commons/collections/primitives/LongCollection;)Z
    .locals 1

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This LongList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(IJ)J
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This LongList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final subList(II)Lorg/apache/commons/collections/primitives/LongList;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/LongList;->subList(II)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongList;->wrap(Lorg/apache/commons/collections/primitives/LongList;)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p1

    return-object p1
.end method
