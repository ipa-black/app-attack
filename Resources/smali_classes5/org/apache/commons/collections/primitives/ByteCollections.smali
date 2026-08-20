.class public final Lorg/apache/commons/collections/primitives/ByteCollections;
.super Ljava/lang/Object;
.source "ByteCollections.java"


# static fields
.field public static final EMPTY_BYTE_ITERATOR:Lorg/apache/commons/collections/primitives/ByteIterator;

.field public static final EMPTY_BYTE_LIST:Lorg/apache/commons/collections/primitives/ByteList;

.field public static final EMPTY_BYTE_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/ByteListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayByteList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayByteList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/ByteCollections;->unmodifiableByteList(Lorg/apache/commons/collections/primitives/ByteList;)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/ByteCollections;->EMPTY_BYTE_LIST:Lorg/apache/commons/collections/primitives/ByteList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/ByteCollections;->unmodifiableByteIterator(Lorg/apache/commons/collections/primitives/ByteIterator;)Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/ByteCollections;->EMPTY_BYTE_ITERATOR:Lorg/apache/commons/collections/primitives/ByteIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteList;->listIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/ByteCollections;->unmodifiableByteListIterator(Lorg/apache/commons/collections/primitives/ByteListIterator;)Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/ByteCollections;->EMPTY_BYTE_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/ByteListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyByteIterator()Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/ByteCollections;->EMPTY_BYTE_ITERATOR:Lorg/apache/commons/collections/primitives/ByteIterator;

    return-object v0
.end method

.method public static getEmptyByteList()Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/ByteCollections;->EMPTY_BYTE_LIST:Lorg/apache/commons/collections/primitives/ByteList;

    return-object v0
.end method

.method public static getEmptyByteListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/ByteCollections;->EMPTY_BYTE_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/ByteListIterator;

    return-object v0
.end method

.method public static singletonByteIterator(B)Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 0

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/ByteCollections;->singletonByteList(B)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/ByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonByteList(B)Lorg/apache/commons/collections/primitives/ByteList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayByteList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayByteList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0}, Lorg/apache/commons/collections/primitives/ByteList;->add(B)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;->wrap(Lorg/apache/commons/collections/primitives/ByteList;)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonByteListIterator(B)Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/ByteCollections;->singletonByteList(B)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/ByteList;->listIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableByteIterator(Lorg/apache/commons/collections/primitives/ByteIterator;)Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteIterator;->wrap(Lorg/apache/commons/collections/primitives/ByteIterator;)Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableByteList(Lorg/apache/commons/collections/primitives/ByteList;)Lorg/apache/commons/collections/primitives/ByteList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;->wrap(Lorg/apache/commons/collections/primitives/ByteList;)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableByteListIterator(Lorg/apache/commons/collections/primitives/ByteListIterator;)Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;->wrap(Lorg/apache/commons/collections/primitives/ByteListIterator;)Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
