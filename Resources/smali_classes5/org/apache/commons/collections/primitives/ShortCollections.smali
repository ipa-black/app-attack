.class public final Lorg/apache/commons/collections/primitives/ShortCollections;
.super Ljava/lang/Object;
.source "ShortCollections.java"


# static fields
.field public static final EMPTY_SHORT_ITERATOR:Lorg/apache/commons/collections/primitives/ShortIterator;

.field public static final EMPTY_SHORT_LIST:Lorg/apache/commons/collections/primitives/ShortList;

.field public static final EMPTY_SHORT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/ShortListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayShortList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayShortList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/ShortCollections;->unmodifiableShortList(Lorg/apache/commons/collections/primitives/ShortList;)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/ShortCollections;->EMPTY_SHORT_LIST:Lorg/apache/commons/collections/primitives/ShortList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortList;->iterator()Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/ShortCollections;->unmodifiableShortIterator(Lorg/apache/commons/collections/primitives/ShortIterator;)Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/ShortCollections;->EMPTY_SHORT_ITERATOR:Lorg/apache/commons/collections/primitives/ShortIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortList;->listIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/ShortCollections;->unmodifiableShortListIterator(Lorg/apache/commons/collections/primitives/ShortListIterator;)Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/ShortCollections;->EMPTY_SHORT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/ShortListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyShortIterator()Lorg/apache/commons/collections/primitives/ShortIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/ShortCollections;->EMPTY_SHORT_ITERATOR:Lorg/apache/commons/collections/primitives/ShortIterator;

    return-object v0
.end method

.method public static getEmptyShortList()Lorg/apache/commons/collections/primitives/ShortList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/ShortCollections;->EMPTY_SHORT_LIST:Lorg/apache/commons/collections/primitives/ShortList;

    return-object v0
.end method

.method public static getEmptyShortListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/ShortCollections;->EMPTY_SHORT_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/ShortListIterator;

    return-object v0
.end method

.method public static singletonShortIterator(S)Lorg/apache/commons/collections/primitives/ShortIterator;
    .locals 0

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/ShortCollections;->singletonShortList(S)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/ShortList;->iterator()Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonShortList(S)Lorg/apache/commons/collections/primitives/ShortList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayShortList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayShortList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0}, Lorg/apache/commons/collections/primitives/ShortList;->add(S)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableShortList;->wrap(Lorg/apache/commons/collections/primitives/ShortList;)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonShortListIterator(S)Lorg/apache/commons/collections/primitives/ShortListIterator;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/ShortCollections;->singletonShortList(S)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/ShortList;->listIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableShortIterator(Lorg/apache/commons/collections/primitives/ShortIterator;)Lorg/apache/commons/collections/primitives/ShortIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableShortIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortIterator;)Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableShortList(Lorg/apache/commons/collections/primitives/ShortList;)Lorg/apache/commons/collections/primitives/ShortList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableShortList;->wrap(Lorg/apache/commons/collections/primitives/ShortList;)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableShortListIterator(Lorg/apache/commons/collections/primitives/ShortListIterator;)Lorg/apache/commons/collections/primitives/ShortListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableShortListIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortListIterator;)Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
