.class public final Lorg/apache/commons/collections/primitives/LongCollections;
.super Ljava/lang/Object;
.source "LongCollections.java"


# static fields
.field public static final EMPTY_LONG_ITERATOR:Lorg/apache/commons/collections/primitives/LongIterator;

.field public static final EMPTY_LONG_LIST:Lorg/apache/commons/collections/primitives/LongList;

.field public static final EMPTY_LONG_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/LongListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayLongList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayLongList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/LongCollections;->unmodifiableLongList(Lorg/apache/commons/collections/primitives/LongList;)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/LongCollections;->EMPTY_LONG_LIST:Lorg/apache/commons/collections/primitives/LongList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongList;->iterator()Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/LongCollections;->unmodifiableLongIterator(Lorg/apache/commons/collections/primitives/LongIterator;)Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/LongCollections;->EMPTY_LONG_ITERATOR:Lorg/apache/commons/collections/primitives/LongIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongList;->listIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/LongCollections;->unmodifiableLongListIterator(Lorg/apache/commons/collections/primitives/LongListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/LongCollections;->EMPTY_LONG_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/LongListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyLongIterator()Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/LongCollections;->EMPTY_LONG_ITERATOR:Lorg/apache/commons/collections/primitives/LongIterator;

    return-object v0
.end method

.method public static getEmptyLongList()Lorg/apache/commons/collections/primitives/LongList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/LongCollections;->EMPTY_LONG_LIST:Lorg/apache/commons/collections/primitives/LongList;

    return-object v0
.end method

.method public static getEmptyLongListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/LongCollections;->EMPTY_LONG_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/LongListIterator;

    return-object v0
.end method

.method public static singletonLongIterator(J)Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lorg/apache/commons/collections/primitives/LongCollections;->singletonLongList(J)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/LongList;->iterator()Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonLongList(J)Lorg/apache/commons/collections/primitives/LongList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayLongList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayLongList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0, p1}, Lorg/apache/commons/collections/primitives/LongList;->add(J)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongList;->wrap(Lorg/apache/commons/collections/primitives/LongList;)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonLongListIterator(J)Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lorg/apache/commons/collections/primitives/LongCollections;->singletonLongList(J)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/LongList;->listIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableLongIterator(Lorg/apache/commons/collections/primitives/LongIterator;)Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;->wrap(Lorg/apache/commons/collections/primitives/LongIterator;)Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableLongList(Lorg/apache/commons/collections/primitives/LongList;)Lorg/apache/commons/collections/primitives/LongList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongList;->wrap(Lorg/apache/commons/collections/primitives/LongList;)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableLongListIterator(Lorg/apache/commons/collections/primitives/LongListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongListIterator;->wrap(Lorg/apache/commons/collections/primitives/LongListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
