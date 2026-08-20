.class public final Lorg/apache/commons/collections/primitives/FloatCollections;
.super Ljava/lang/Object;
.source "FloatCollections.java"


# static fields
.field public static final EMPTY_FLOAT_ITERATOR:Lorg/apache/commons/collections/primitives/FloatIterator;

.field public static final EMPTY_FLOAT_LIST:Lorg/apache/commons/collections/primitives/FloatList;

.field public static final EMPTY_FLOAT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/FloatListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayFloatList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayFloatList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/FloatCollections;->unmodifiableFloatList(Lorg/apache/commons/collections/primitives/FloatList;)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/FloatCollections;->EMPTY_FLOAT_LIST:Lorg/apache/commons/collections/primitives/FloatList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatList;->iterator()Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/FloatCollections;->unmodifiableFloatIterator(Lorg/apache/commons/collections/primitives/FloatIterator;)Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/FloatCollections;->EMPTY_FLOAT_ITERATOR:Lorg/apache/commons/collections/primitives/FloatIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatList;->listIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/FloatCollections;->unmodifiableFloatListIterator(Lorg/apache/commons/collections/primitives/FloatListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/FloatCollections;->EMPTY_FLOAT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/FloatListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyFloatIterator()Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/FloatCollections;->EMPTY_FLOAT_ITERATOR:Lorg/apache/commons/collections/primitives/FloatIterator;

    return-object v0
.end method

.method public static getEmptyFloatList()Lorg/apache/commons/collections/primitives/FloatList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/FloatCollections;->EMPTY_FLOAT_LIST:Lorg/apache/commons/collections/primitives/FloatList;

    return-object v0
.end method

.method public static getEmptyFloatListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/FloatCollections;->EMPTY_FLOAT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/FloatListIterator;

    return-object v0
.end method

.method public static singletonFloatIterator(F)Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 0

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/FloatCollections;->singletonFloatList(F)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/FloatList;->iterator()Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonFloatList(F)Lorg/apache/commons/collections/primitives/FloatList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayFloatList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayFloatList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0}, Lorg/apache/commons/collections/primitives/FloatList;->add(F)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatList;->wrap(Lorg/apache/commons/collections/primitives/FloatList;)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonFloatListIterator(F)Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/FloatCollections;->singletonFloatList(F)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/FloatList;->listIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableFloatIterator(Lorg/apache/commons/collections/primitives/FloatIterator;)Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatIterator;)Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableFloatList(Lorg/apache/commons/collections/primitives/FloatList;)Lorg/apache/commons/collections/primitives/FloatList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatList;->wrap(Lorg/apache/commons/collections/primitives/FloatList;)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableFloatListIterator(Lorg/apache/commons/collections/primitives/FloatListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
