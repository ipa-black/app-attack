.class public final Lorg/apache/commons/collections/primitives/IntCollections;
.super Ljava/lang/Object;
.source "IntCollections.java"


# static fields
.field public static final EMPTY_INT_ITERATOR:Lorg/apache/commons/collections/primitives/IntIterator;

.field public static final EMPTY_INT_LIST:Lorg/apache/commons/collections/primitives/IntList;

.field public static final EMPTY_INT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/IntListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayIntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayIntList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/IntCollections;->unmodifiableIntList(Lorg/apache/commons/collections/primitives/IntList;)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/IntCollections;->EMPTY_INT_LIST:Lorg/apache/commons/collections/primitives/IntList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntList;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/IntCollections;->unmodifiableIntIterator(Lorg/apache/commons/collections/primitives/IntIterator;)Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/IntCollections;->EMPTY_INT_ITERATOR:Lorg/apache/commons/collections/primitives/IntIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntList;->listIterator()Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/IntCollections;->unmodifiableIntListIterator(Lorg/apache/commons/collections/primitives/IntListIterator;)Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/IntCollections;->EMPTY_INT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/IntListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyIntIterator()Lorg/apache/commons/collections/primitives/IntIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/IntCollections;->EMPTY_INT_ITERATOR:Lorg/apache/commons/collections/primitives/IntIterator;

    return-object v0
.end method

.method public static getEmptyIntList()Lorg/apache/commons/collections/primitives/IntList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/IntCollections;->EMPTY_INT_LIST:Lorg/apache/commons/collections/primitives/IntList;

    return-object v0
.end method

.method public static getEmptyIntListIterator()Lorg/apache/commons/collections/primitives/IntListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/IntCollections;->EMPTY_INT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/IntListIterator;

    return-object v0
.end method

.method public static singletonIntIterator(I)Lorg/apache/commons/collections/primitives/IntIterator;
    .locals 0

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/IntCollections;->singletonIntList(I)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/IntList;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonIntList(I)Lorg/apache/commons/collections/primitives/IntList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayIntList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayIntList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0}, Lorg/apache/commons/collections/primitives/IntList;->add(I)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableIntList;->wrap(Lorg/apache/commons/collections/primitives/IntList;)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonIntListIterator(I)Lorg/apache/commons/collections/primitives/IntListIterator;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/IntCollections;->singletonIntList(I)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/IntList;->listIterator()Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableIntIterator(Lorg/apache/commons/collections/primitives/IntIterator;)Lorg/apache/commons/collections/primitives/IntIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableIntIterator;->wrap(Lorg/apache/commons/collections/primitives/IntIterator;)Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableIntList(Lorg/apache/commons/collections/primitives/IntList;)Lorg/apache/commons/collections/primitives/IntList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableIntList;->wrap(Lorg/apache/commons/collections/primitives/IntList;)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableIntListIterator(Lorg/apache/commons/collections/primitives/IntListIterator;)Lorg/apache/commons/collections/primitives/IntListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableIntListIterator;->wrap(Lorg/apache/commons/collections/primitives/IntListIterator;)Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
