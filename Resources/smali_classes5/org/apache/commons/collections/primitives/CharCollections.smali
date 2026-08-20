.class public final Lorg/apache/commons/collections/primitives/CharCollections;
.super Ljava/lang/Object;
.source "CharCollections.java"


# static fields
.field public static final EMPTY_CHAR_ITERATOR:Lorg/apache/commons/collections/primitives/CharIterator;

.field public static final EMPTY_CHAR_LIST:Lorg/apache/commons/collections/primitives/CharList;

.field public static final EMPTY_CHAR_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/CharListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayCharList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayCharList;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/CharCollections;->unmodifiableCharList(Lorg/apache/commons/collections/primitives/CharList;)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/CharCollections;->EMPTY_CHAR_LIST:Lorg/apache/commons/collections/primitives/CharList;

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharList;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/collections/primitives/CharCollections;->unmodifiableCharIterator(Lorg/apache/commons/collections/primitives/CharIterator;)Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/primitives/CharCollections;->EMPTY_CHAR_ITERATOR:Lorg/apache/commons/collections/primitives/CharIterator;

    .line 150
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharList;->listIterator()Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/CharCollections;->unmodifiableCharListIterator(Lorg/apache/commons/collections/primitives/CharListIterator;)Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/primitives/CharCollections;->EMPTY_CHAR_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/CharListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyCharIterator()Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/commons/collections/primitives/CharCollections;->EMPTY_CHAR_ITERATOR:Lorg/apache/commons/collections/primitives/CharIterator;

    return-object v0
.end method

.method public static getEmptyCharList()Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/commons/collections/primitives/CharCollections;->EMPTY_CHAR_LIST:Lorg/apache/commons/collections/primitives/CharList;

    return-object v0
.end method

.method public static getEmptyCharListIterator()Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/commons/collections/primitives/CharCollections;->EMPTY_CHAR_LIST_ITERATOR:Lorg/apache/commons/collections/primitives/CharListIterator;

    return-object v0
.end method

.method public static singletonCharIterator(C)Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 0

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/CharCollections;->singletonCharList(C)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/CharList;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object p0

    return-object p0
.end method

.method public static singletonCharList(C)Lorg/apache/commons/collections/primitives/CharList;
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/commons/collections/primitives/ArrayCharList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/primitives/ArrayCharList;-><init>(I)V

    .line 43
    invoke-interface {v0, p0}, Lorg/apache/commons/collections/primitives/CharList;->add(C)Z

    .line 44
    invoke-static {v0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;->wrap(Lorg/apache/commons/collections/primitives/CharList;)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object p0

    return-object p0
.end method

.method public static singletonCharListIterator(C)Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/CharCollections;->singletonCharList(C)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections/primitives/CharList;->listIterator()Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableCharIterator(Lorg/apache/commons/collections/primitives/CharIterator;)Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharIterator;->wrap(Lorg/apache/commons/collections/primitives/CharIterator;)Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 88
    throw p0
.end method

.method public static unmodifiableCharList(Lorg/apache/commons/collections/primitives/CharList;)Lorg/apache/commons/collections/primitives/CharList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;->wrap(Lorg/apache/commons/collections/primitives/CharList;)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static unmodifiableCharListIterator(Lorg/apache/commons/collections/primitives/CharListIterator;)Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharListIterator;->wrap(Lorg/apache/commons/collections/primitives/CharListIterator;)Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 102
    throw p0
.end method
