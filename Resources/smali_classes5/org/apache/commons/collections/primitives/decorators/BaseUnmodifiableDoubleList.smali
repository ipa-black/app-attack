.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;
.source "BaseUnmodifiableDoubleList.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(ID)V
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This DoubleList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(D)Z
    .locals 0

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This DoubleList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(ILorg/apache/commons/collections/primitives/DoubleCollection;)Z
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This DoubleList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(Lorg/apache/commons/collections/primitives/DoubleCollection;)Z
    .locals 1

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This DoubleList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This DoubleList is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleIterator;)Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleList;->listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleListIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/DoubleList;->listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleListIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll(Lorg/apache/commons/collections/primitives/DoubleCollection;)Z
    .locals 1

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This DoubleList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeElement(D)Z
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This DoubleList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeElementAt(I)D
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This DoubleList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final retainAll(Lorg/apache/commons/collections/primitives/DoubleCollection;)Z
    .locals 1

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This DoubleList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(ID)D
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This DoubleList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final subList(II)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/DoubleList;->subList(II)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleList;->wrap(Lorg/apache/commons/collections/primitives/DoubleList;)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p1

    return-object p1
.end method
