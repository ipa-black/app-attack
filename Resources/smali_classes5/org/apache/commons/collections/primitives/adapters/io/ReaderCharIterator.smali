.class public Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;
.super Ljava/lang/Object;
.source "ReaderCharIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharIterator;


# instance fields
.field private next:I

.field private nextAvailable:Z

.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->nextAvailable:Z

    .line 33
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->reader:Ljava/io/Reader;

    return-void
.end method

.method public static adapt(Ljava/io/Reader;)Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private ensureNextAvailable()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->nextAvailable:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->readNext()V

    :cond_0
    return-void
.end method

.method private readNext()V
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->next:I

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->nextAvailable:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->ensureNextAvailable()V

    const/4 v0, -0x1

    .line 42
    iget v1, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->next:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()C
    .locals 2

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->nextAvailable:Z

    .line 50
    iget v0, p0, Lorg/apache/commons/collections/primitives/adapters/io/ReaderCharIterator;->next:I

    int-to-char v0, v0

    return v0

    .line 47
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported here"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
