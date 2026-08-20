.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;
.source "BaseUnmodifiableFloatList.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(IF)V
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This FloatList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(F)Z
    .locals 1

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(ILorg/apache/commons/collections/primitives/FloatCollection;)Z
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This FloatList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(Lorg/apache/commons/collections/primitives/FloatCollection;)Z
    .locals 1

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This FloatList is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final iterator()Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatList;->iterator()Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatIterator;)Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatList;->listIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/FloatList;->listIterator(I)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll(Lorg/apache/commons/collections/primitives/FloatCollection;)Z
    .locals 1

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeElement(F)Z
    .locals 1

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeElementAt(I)F
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final retainAll(Lorg/apache/commons/collections/primitives/FloatCollection;)Z
    .locals 1

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatList is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(IF)F
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This FloatList is not modifiable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final subList(II)Lorg/apache/commons/collections/primitives/FloatList;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/FloatList;->subList(II)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatList;->wrap(Lorg/apache/commons/collections/primitives/FloatList;)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p1

    return-object p1
.end method
