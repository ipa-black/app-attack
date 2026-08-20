.class public Lorg/apache/mina/io/filter/SSLFilter;
.super Lorg/apache/mina/io/IoFilterAdapter;
.source "SSLFilter.java"


# static fields
.field public static final SSL_MARKER:Ljava/lang/Object;

.field static synthetic class$org$apache$mina$io$filter$SSLFilter:Ljava/lang/Class;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private client:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private needClientAuth:Z

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSessionHandlerMap:Ljava/util/Map;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/mina/io/filter/SSLFilter;->class$org$apache$mina$io$filter$SSLFilter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.mina.io.filter.SSLFilter"

    invoke-static {v0}, Lorg/apache/mina/io/filter/SSLFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/io/filter/SSLFilter;->class$org$apache$mina$io$filter$SSLFilter:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    .line 54
    new-instance v0, Lorg/apache/mina/io/filter/SSLFilter$1;

    invoke-direct {v0}, Lorg/apache/mina/io/filter/SSLFilter$1;-><init>()V

    sput-object v0, Lorg/apache/mina/io/filter/SSLFilter;->SSL_MARKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/apache/mina/io/IoFilterAdapter;-><init>()V

    .line 66
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslContext"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private static copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 465
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v0

    .line 466
    invoke-virtual {v0, p0}, Lorg/apache/mina/common/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 467
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    return-object v0
.end method

.method private createSSLSessionHandler(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/io/filter/SSLHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/filter/SSLHandler;

    if-nez v0, :cond_1

    .line 478
    iget-object v1, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/filter/SSLHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 486
    :try_start_1
    new-instance v0, Lorg/apache/mina/io/filter/SSLHandler;

    iget-object v2, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {v0, p0, v2, p1}, Lorg/apache/mina/io/filter/SSLHandler;-><init>(Lorg/apache/mina/io/filter/SSLFilter;Ljavax/net/ssl/SSLContext;Lorg/apache/mina/io/IoSession;)V

    .line 488
    iget-object v2, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->doHandshake()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 496
    :try_start_2
    iget-object v2, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    throw v0

    .line 500
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getSSLSessionHandler(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/io/filter/SSLHandler;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/filter/SSLHandler;

    return-object p1
.end method

.method private handleAppDataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V
    .locals 4

    .line 370
    sget-object v0, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " appBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/mina/io/filter/SSLHandler;->getAppBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 374
    :cond_0
    invoke-virtual {p3}, Lorg/apache/mina/io/filter/SSLHandler;->getAppBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {p3}, Lorg/apache/mina/io/filter/SSLHandler;->getAppBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/mina/io/filter/SSLFilter;->copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p3

    .line 378
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " app data read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 382
    :cond_1
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    :cond_2
    return-void
.end method

.method private handleSSLData(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 355
    invoke-virtual {p3}, Lorg/apache/mina/io/filter/SSLHandler;->isInitialHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p3}, Lorg/apache/mina/io/filter/SSLHandler;->flushScheduledWrites()V

    .line 361
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/apache/mina/io/filter/SSLFilter;->writeNetBuffer(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V

    .line 364
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/filter/SSLFilter;->handleAppDataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V

    return-void
.end method

.method private removeSSLSessionHandler(Lorg/apache/mina/io/IoSession;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/filter/SSLFilter;->sslSessionHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 5

    .line 234
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/SSLFilter;->getSSLSessionHandler(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/io/filter/SSLHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 237
    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " Data Read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 241
    :cond_0
    monitor-enter v0

    .line 246
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/apache/mina/io/filter/SSLHandler;->dataRead(Ljava/nio/ByteBuffer;)V

    .line 249
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/io/filter/SSLFilter;->handleSSLData(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V

    .line 251
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->isClosed()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 253
    sget-object p3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 255
    sget-object p3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " SSL Session closed. Closing connection.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 258
    :cond_1
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->close()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p3

    .line 263
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->isInitialHandshakeComplete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Initial SSL handshake failed."

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, p3}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p3, v1

    .line 271
    :cond_2
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    .line 273
    :cond_3
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 277
    :cond_4
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    :goto_2
    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0

    .line 284
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/io/IoFilter$NextFilter;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 290
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/SSLFilter;->createSSLSessionHandler(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/io/filter/SSLHandler;

    move-result-object v0

    .line 291
    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " Filtered Write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 296
    :cond_0
    monitor-enter v0

    .line 298
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->isWritingEncryptedData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "   already encrypted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/mina/io/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    .line 306
    monitor-exit v0

    return-void

    .line 309
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->isInitialHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " encrypt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 316
    :cond_3
    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/mina/io/filter/SSLHandler;->encrypt(Ljava/nio/ByteBuffer;)V

    .line 317
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/io/filter/SSLFilter;->copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v2

    .line 320
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " encrypted buf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 324
    :cond_4
    invoke-virtual {p3}, Lorg/apache/mina/common/ByteBuffer;->release()V

    .line 325
    invoke-interface {p1, p2, v2, p4}, Lorg/apache/mina/io/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    .line 326
    monitor-exit v0

    return-void

    .line 330
    :cond_5
    invoke-interface {p2}, Lorg/apache/mina/io/IoSession;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6

    .line 332
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 334
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " Write request on closed session."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_6
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 341
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v3, " Handshaking is not complete yet. Buffering write request."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 343
    :cond_7
    invoke-virtual {v0, p1, p3, p4}, Lorg/apache/mina/io/filter/SSLHandler;->scheduleWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    .line 346
    :cond_8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public isNeedClientAuth()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->needClientAuth:Z

    return v0
.end method

.method public isUseClientMode()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->client:Z

    return v0
.end method

.method public isWantClientAuth()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/apache/mina/io/filter/SSLFilter;->wantClientAuth:Z

    return v0
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 5

    .line 196
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/SSLFilter;->getSSLSessionHandler(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/io/filter/SSLHandler;

    move-result-object v0

    .line 197
    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " Closed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 203
    monitor-enter v0

    .line 209
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->shutdown()V

    .line 212
    invoke-virtual {p0, p2, v0}, Lorg/apache/mina/io/filter/SSLFilter;->writeNetBuffer(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    .line 224
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->release()V

    .line 225
    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/SSLFilter;->removeSSLSessionHandler(Lorg/apache/mina/io/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 216
    :try_start_2
    invoke-interface {p1, p2, v1}, Lorg/apache/mina/io/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    :try_start_3
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    .line 224
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->release()V

    goto :goto_0

    .line 227
    :goto_1
    monitor-exit v0

    goto :goto_4

    .line 221
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    .line 224
    invoke-virtual {v0}, Lorg/apache/mina/io/filter/SSLHandler;->release()V

    .line 225
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/SSLFilter;->removeSSLSessionHandler(Lorg/apache/mina/io/IoSession;)V

    .line 226
    throw v1

    .line 227
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    :goto_4
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p2}, Lorg/apache/mina/io/filter/SSLFilter;->createSSLSessionHandler(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/io/filter/SSLHandler;

    .line 191
    invoke-interface {p1, p2}, Lorg/apache/mina/io/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/mina/io/filter/SSLFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/apache/mina/io/filter/SSLFilter;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lorg/apache/mina/io/filter/SSLFilter;->needClientAuth:Z

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/apache/mina/io/filter/SSLFilter;->client:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lorg/apache/mina/io/filter/SSLFilter;->wantClientAuth:Z

    return-void
.end method

.method writeNetBuffer(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/filter/SSLHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 390
    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    monitor-enter p2

    const/4 v0, 0x1

    .line 402
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/apache/mina/io/filter/SSLHandler;->setWritingEncryptedData(Z)V

    .line 403
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 407
    :try_start_1
    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " write outNetBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/io/filter/SSLFilter;->copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v2

    .line 413
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " session write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 418
    :cond_2
    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter;->SSL_MARKER:Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    .line 421
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->needToCompleteInitialHandshake()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    .line 425
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->continueHandshake()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    :try_start_3
    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    sget-object v1, Lorg/apache/mina/io/filter/SSLFilter;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " write outNetBuffer2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 441
    :cond_4
    invoke-virtual {p2}, Lorg/apache/mina/io/filter/SSLHandler;->getOutNetBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/io/filter/SSLFilter;->copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v1

    .line 443
    sget-object v2, Lorg/apache/mina/io/filter/SSLFilter;->SSL_MARKER:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Initial SSL handshake failed."

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1, p1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 432
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 449
    :cond_5
    monitor-enter p2

    .line 451
    :try_start_4
    invoke-virtual {p2, v0}, Lorg/apache/mina/io/filter/SSLHandler;->setWritingEncryptedData(Z)V

    .line 452
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 449
    monitor-enter p2

    .line 451
    :try_start_5
    invoke-virtual {p2, v0}, Lorg/apache/mina/io/filter/SSLHandler;->setWritingEncryptedData(Z)V

    .line 452
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 453
    throw p1

    :catchall_2
    move-exception p1

    .line 452
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 403
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method
