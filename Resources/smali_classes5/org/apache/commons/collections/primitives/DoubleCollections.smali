.class public final Lorg/apache/commons/collections/primitives/DoubleCollections;
.super Ljava/lang/Object;
.source "DoubleCollections.java"


# static fields
.field public static final EMPTY_DOUBLE_ITERATOR:Lorg/apache/commons/collections/primitives/DoubleIterator;

.field public static final EMPTY_DOUBLE_LIST:Lorg/apache/commons/collections/primitives/DoubleList;

.field public static final EMPTY_DOUBLE_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/DoubleListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/DoubleCollections;->unmodifiableDoubleList(Lorg/apache/commons/collections/primitives/DoubleList;)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/DoubleCollections;->EMPTY_DOUBLE_LIST:Lorg/apache/commons/collections/primitives/DoubleList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/DoubleCollections;->unmodifiableDoubleIterator(Lorg/apache/commons/collections/primitives/DoubleIterator;)Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/DoubleCollections;->EMPTY_DOUBLE_ITERATOR:Lorg/apache/commons/collections/primitives/DoubleIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleList;->listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/DoubleCollections;->unmodifiableDoubleListIterator(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/DoubleCollections;->EMPTY_DOUBLE_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/DoubleListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyDoubleIterator()Lorg/apache/commons/collections/primitives/DoubleIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/DoubleCollections;->EMPTY_DOUBLE_ITERATOR:Lorg/apache/commons/collections/primitives/DoubleIterator;

    return-object v0
.end method

.method public static getEmptyDoubleList()Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/DoubleCollections;->EMPTY_DOUBLE_LIST:Lorg/apache/commons/collections/primitives/DoubleList;

    return-object v0
.end method

.method public static getEmptyDoubleListIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/DoubleCollections;->EMPTY_DOUBLE_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/DoubleListIterator;

    return-object v0
.end method

.method public static singletonDoubleIterator(D)Lorg/apache/commons/collections/primitives/DoubleIterator;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lorg/apache/commons/collections/primitives/DoubleCollections;->singletonDoubleList(D)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/DoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonDoubleList(D)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayDoubleList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayDoubleList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0, p1}, Lorg/apache/commons/collections/primitives/DoubleList;->add(D)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleList;->wrap(Lorg/apache/commons/collections/primitives/DoubleList;)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonDoubleListIterator(D)Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lorg/apache/commons/collections/primitives/DoubleCollections;->singletonDoubleList(D)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/DoubleList;->listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableDoubleIterator(Lorg/apache/commons/collections/primitives/DoubleIterator;)Lorg/apache/commons/collections/primitives/DoubleIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleIterator;)Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableDoubleList(Lorg/apache/commons/collections/primitives/DoubleList;)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleList;->wrap(Lorg/apache/commons/collections/primitives/DoubleList;)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableDoubleListIterator(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableDoubleListIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
