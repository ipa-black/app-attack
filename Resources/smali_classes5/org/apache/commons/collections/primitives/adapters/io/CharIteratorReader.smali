.class public Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;
.super Ljava/io/Reader;
.source "CharIteratorReader.java"


# instance fields
.field private iterator:Lorg/apache/commons/collections/primitives/CharIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/CharIterator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;->iterator:Lorg/apache/commons/collections/primitives/CharIterator;

    return-void
.end method

.method public static adapt(Lorg/apache/commons/collections/primitives/CharIterator;)Ljava/io/Reader;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;-><init>(Lorg/apache/commons/collections/primitives/CharIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read([CII)I
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;->iterator:Lorg/apache/commons/collections/primitives/CharIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;->iterator:Lorg/apache/commons/collections/primitives/CharIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 38
    iget-object v2, p0, Lorg/apache/commons/collections/primitives/adapters/io/CharIteratorReader;->iterator:Lorg/apache/commons/collections/primitives/CharIterator;

    invoke-interface {v2}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

    move-result v2

    aput-char v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
