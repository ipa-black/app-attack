.class public Lorg/apache/ldap/common/ldif/LdifIterator;
.super Ljava/lang/Object;
.source "LdifIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private in:Ljava/io/BufferedReader;

.field private monitor:Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;

.field private prefetched:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/ldif/LdifIterator;-><init>(Ljava/io/Reader;)V

    if-eqz p1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "InputStream cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/ldap/common/ldif/LdifIterator;-><init>(Ljava/io/Reader;Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;)V

    if-eqz p1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "InputStream cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetched:Ljava/lang/String;

    .line 45
    new-instance v1, Lorg/apache/ldap/common/ldif/LdifIteratorMonitorAdapter;

    invoke-direct {v1}, Lorg/apache/ldap/common/ldif/LdifIteratorMonitorAdapter;-><init>()V

    iput-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->monitor:Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;

    .line 48
    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->in:Ljava/io/BufferedReader;

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->buf:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->in:Ljava/io/BufferedReader;

    .line 92
    const-string p1, "<init>: -- opended file"

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetch()V

    .line 94
    const-string p1, "<init>: -- prefetch complete"

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Reader cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/ldif/LdifIterator;-><init>(Ljava/io/Reader;)V

    if-eqz p2, :cond_0

    .line 131
    iput-object p2, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->monitor:Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;

    :cond_0
    if-eqz p1, :cond_1

    return-void

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Reader cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->monitor:Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;->infoAvailable(Ljava/lang/String;)V

    return-void
.end method

.method private error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->monitor:Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/common/ldif/LdifIteratorMonitor;->fatalFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static filterComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x23

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    .line 309
    const-string p0, ""

    return-object p0

    :cond_1
    :goto_0
    if-eq v2, v1, :cond_4

    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_3

    const/16 v4, 0x5c

    .line 316
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v4, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 320
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private prefetch()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 238
    :goto_0
    iget-object v2, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 240
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "readLine(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 241
    invoke-static {v2}, Lorg/apache/ldap/common/ldif/LdifIterator;->filterComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    .line 243
    const-string v4, "prefetch(): -- appending last line to buffer"

    const-string v5, ""

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-direct {p0, v4}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 269
    iget-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 271
    const-string v1, "prefetch(): -- line was null and buffer was empty"

    invoke-direct {p0, v1}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 272
    const-string v1, "prefetch(): -- iterator has been consumed"

    invoke-direct {p0, v1}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 273
    iput-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetched:Ljava/lang/String;

    goto :goto_2

    .line 277
    :cond_4
    const-string v1, "prefetch(): -- LDIF prefetched and set as next"

    invoke-direct {p0, v1}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetched:Ljava/lang/String;

    .line 287
    :goto_2
    iget-object v1, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 288
    const-string v0, "prefetch(): -- LDIF buffer cleared"

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetched:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 170
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetched:Ljava/lang/String;

    .line 174
    :try_start_0
    const-string v1, "next(): -- called"

    invoke-direct {p0, v1}, Lorg/apache/ldap/common/ldif/LdifIterator;->debug(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lorg/apache/ldap/common/ldif/LdifIterator;->prefetch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 184
    const-string v2, "Premature termination of LDIF iterator due to underlying stream error"

    invoke-direct {p0, v2, v1}, Lorg/apache/ldap/common/ldif/LdifIterator;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
