.class Lorg/apache/mina/io/filter/SSLByteBufferPool;
.super Ljava/lang/Object;
.source "SSLByteBufferPool.java"


# static fields
.field private static final APPLICATION_BUFFER_INDEX:I = 0x1

.field private static final DIRECT_MEMORY_PROP:Ljava/lang/String; = "mina.sslfilter.directbuffer"

.field private static final PACKET_BUFFER_INDEX:I = 0x0

.field private static appBufferSize:I = 0x0

.field private static bufferStackSizes:[I = null

.field private static final bufferStacks:[Lorg/apache/mina/util/Stack;

.field private static initiated:Z = false

.field private static packetBufferSize:I = 0x0

.field private static useDirectAllocatedBuffers:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lorg/apache/mina/util/Stack;

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->bufferStacks:[Lorg/apache/mina/util/Stack;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocate(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 116
    sget-object v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->bufferStacks:[Lorg/apache/mina/util/Stack;

    aget-object v0, v0, p0

    .line 119
    monitor-enter v0

    .line 121
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lorg/apache/mina/io/filter/SSLByteBufferPool;->bufferStackSizes:[I

    aget p0, v1, p0

    invoke-static {p0}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p0

    .line 126
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static createBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 178
    sget-boolean v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->useDirectAllocatedBuffers:Z

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    .line 186
    sput-boolean v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->useDirectAllocatedBuffers:Z

    .line 187
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OutOfMemoryError: No more direct buffers available; trying heap buffer instead"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static expandBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 153
    invoke-static {p1}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 155
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 156
    invoke-static {p0}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->release(Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method static getApplicationBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 104
    sget-boolean v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->initiated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBufferStackIndex(I)I
    .locals 1

    .line 169
    sget v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->packetBufferSize:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    sget v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->appBufferSize:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static getPacketBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 91
    sget-boolean v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->initiated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized initiate(Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    const-class v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-boolean v1, Lorg/apache/mina/io/filter/SSLByteBufferPool;->initiated:Z

    if-nez v1, :cond_1

    .line 66
    const-string v1, "mina.sslfilter.directbuffer"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "mina.sslfilter.directbuffer"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/mina/io/filter/SSLByteBufferPool;->useDirectAllocatedBuffers:Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p0

    sput p0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->packetBufferSize:I

    mul-int/lit8 p0, p0, 0x2

    .line 79
    sput p0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->appBufferSize:I

    .line 80
    invoke-static {}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->initiateBufferStacks()V

    const/4 p0, 0x1

    .line 81
    sput-boolean p0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->initiated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initiateBufferStacks()V
    .locals 3

    const/4 v0, 0x2

    .line 162
    new-array v0, v0, [I

    sput-object v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->bufferStackSizes:[I

    const/4 v1, 0x0

    .line 163
    sget v2, Lorg/apache/mina/io/filter/SSLByteBufferPool;->packetBufferSize:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 164
    sget v2, Lorg/apache/mina/io/filter/SSLByteBufferPool;->appBufferSize:I

    aput v2, v0, v1

    return-void
.end method

.method public static release(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->getBufferStackIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 139
    sget-object v0, Lorg/apache/mina/io/filter/SSLByteBufferPool;->bufferStacks:[Lorg/apache/mina/util/Stack;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/io/filter/SSLByteBufferPool;->getBufferStackIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 140
    monitor-enter v0

    .line 141
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/mina/util/Stack;->push(Ljava/lang/Object;)V

    .line 142
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
