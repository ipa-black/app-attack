.class public final Lorg/apache/regexp/ReaderCharacterIterator;
.super Ljava/lang/Object;
.source "ReaderCharacterIterator.java"

# interfaces
.implements Lorg/apache/regexp/CharacterIterator;


# instance fields
.field private final buff:Ljava/lang/StringBuffer;

.field private closed:Z

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/regexp/ReaderCharacterIterator;->reader:Ljava/io/Reader;

    .line 82
    new-instance p1, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lorg/apache/regexp/ReaderCharacterIterator;->closed:Z

    return-void
.end method

.method private ensure(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 198
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/apache/regexp/ReaderCharacterIterator;->read(I)I

    return-void
.end method

.method private read(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    new-array v0, p1, [C

    move v2, v1

    .line 163
    :cond_1
    iget-object v3, p0, Lorg/apache/regexp/ReaderCharacterIterator;->reader:Ljava/io/Reader;

    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-gez v3, :cond_2

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lorg/apache/regexp/ReaderCharacterIterator;->closed:Z

    goto :goto_0

    :cond_2
    add-int/2addr v2, v3

    .line 170
    iget-object v4, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    if-lt v2, p1, :cond_1

    :goto_0
    return v2
.end method

.method private readAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    :goto_0
    iget-boolean v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    .line 182
    invoke-direct {p0, v0}, Lorg/apache/regexp/ReaderCharacterIterator;->read(I)I

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/regexp/ReaderCharacterIterator;->ensure(I)V

    .line 120
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEnd(I)Z
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    return v1

    .line 139
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/regexp/ReaderCharacterIterator;->ensure(I)V

    .line 140
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 105
    :try_start_0
    invoke-direct {p0}, Lorg/apache/regexp/ReaderCharacterIterator;->readAll()V

    .line 106
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    add-int v0, p1, p2

    .line 91
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/regexp/ReaderCharacterIterator;->ensure(I)V

    .line 92
    iget-object v0, p0, Lorg/apache/regexp/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
