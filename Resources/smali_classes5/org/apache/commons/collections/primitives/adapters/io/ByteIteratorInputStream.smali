.class public Lorg/apache/commons/collections/primitives/adapters/io/ByteIteratorInputStream;
.super Ljava/io/InputStream;
.source "ByteIteratorInputStream.java"


# instance fields
.field private iterator:Lorg/apache/commons/collections/primitives/ByteIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ByteIterator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/io/ByteIteratorInputStream;->iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    return-void
.end method

.method public static adapt(Lorg/apache/commons/collections/primitives/ByteIterator;)Ljava/io/InputStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/io/ByteIteratorInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/io/ByteIteratorInputStream;-><init>(Lorg/apache/commons/collections/primitives/ByteIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ByteIteratorInputStream;->iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ByteIteratorInputStream;->iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
