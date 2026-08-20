.class public abstract Lorg/apache/mina/common/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;
    }
.end annotation


# static fields
.field private static final MINIMUM_CAPACITY:I = 0x1

.field private static final containerStack:Lorg/apache/mina/util/Stack;

.field private static final directBufferStacks:[Lorg/apache/mina/util/Stack;

.field private static final heapBufferStacks:[Lorg/apache/mina/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 117
    new-instance v0, Lorg/apache/mina/util/Stack;

    invoke-direct {v0}, Lorg/apache/mina/util/Stack;-><init>()V

    sput-object v0, Lorg/apache/mina/common/ByteBuffer;->containerStack:Lorg/apache/mina/util/Stack;

    const/16 v0, 0x20

    .line 119
    new-array v1, v0, [Lorg/apache/mina/util/Stack;

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v15, 0xc

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v16, 0xd

    aput-object v2, v1, v16

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v17, 0xe

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v18, 0xf

    aput-object v2, v1, v18

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v19, 0x10

    aput-object v2, v1, v19

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v20, 0x11

    aput-object v2, v1, v20

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v21, 0x12

    aput-object v2, v1, v21

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v22, 0x13

    aput-object v2, v1, v22

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v23, 0x14

    aput-object v2, v1, v23

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x15

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x16

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x17

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x18

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x19

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x1a

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x1b

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x1c

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x1d

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x1e

    aput-object v2, v1, v24

    new-instance v2, Lorg/apache/mina/util/Stack;

    invoke-direct {v2}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v24, 0x1f

    aput-object v2, v1, v24

    sput-object v1, Lorg/apache/mina/common/ByteBuffer;->heapBufferStacks:[Lorg/apache/mina/util/Stack;

    .line 129
    new-array v0, v0, [Lorg/apache/mina/util/Stack;

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v12

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v16

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v17

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v18

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v19

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v20

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v21

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v22

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    aput-object v1, v0, v23

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/mina/util/Stack;

    invoke-direct {v1}, Lorg/apache/mina/util/Stack;-><init>()V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/mina/common/ByteBuffer;->directBufferStacks:[Lorg/apache/mina/util/Stack;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 113
    invoke-static {p0}, Lorg/apache/mina/common/ByteBuffer;->release0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/mina/util/Stack;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/mina/common/ByteBuffer;->containerStack:Lorg/apache/mina/util/Stack;

    return-object v0
.end method

.method public static allocate(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 152
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(IZ)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    .line 157
    invoke-static {p0, v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(IZ)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocate(IZ)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 170
    invoke-static {p0, p1}, Lorg/apache/mina/common/ByteBuffer;->allocate0(IZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 173
    sget-object p1, Lorg/apache/mina/common/ByteBuffer;->containerStack:Lorg/apache/mina/util/Stack;

    monitor-enter p1

    .line 175
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;

    .line 176
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;

    invoke-direct {v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;-><init>()V

    .line 183
    :cond_0
    invoke-static {v0, p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->access$000(Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 176
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static allocate0(IZ)Ljava/nio/ByteBuffer;
    .locals 2

    if-eqz p1, :cond_0

    .line 189
    sget-object v0, Lorg/apache/mina/common/ByteBuffer;->directBufferStacks:[Lorg/apache/mina/util/Stack;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/mina/common/ByteBuffer;->heapBufferStacks:[Lorg/apache/mina/util/Stack;

    .line 190
    :goto_0
    invoke-static {v0, p0}, Lorg/apache/mina/common/ByteBuffer;->getBufferStackIndex([Lorg/apache/mina/util/Stack;I)I

    move-result p0

    .line 191
    aget-object v0, v0, p0

    .line 194
    monitor-enter v0

    .line 196
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    shl-int p0, v0, p0

    if-eqz p1, :cond_1

    .line 201
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_1
    move-object v1, p0

    .line 205
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 206
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_0
    move-exception p0

    .line 197
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getBufferStackIndex([Lorg/apache/mina/util/Stack;I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-le p1, v0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 261
    array-length v2, p0

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Buffer size is too big: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method

.method private static release0(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/mina/common/ByteBuffer;->directBufferStacks:[Lorg/apache/mina/util/Stack;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/mina/common/ByteBuffer;->heapBufferStacks:[Lorg/apache/mina/util/Stack;

    .line 213
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/mina/common/ByteBuffer;->getBufferStackIndex([Lorg/apache/mina/util/Stack;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 214
    monitor-enter v0

    .line 217
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/mina/util/Stack;->push(Ljava/lang/Object;)V

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 229
    new-instance v0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;

    invoke-direct {v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;-><init>()V

    .line 230
    invoke-static {v0, p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->access$000(Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrap([B)Lorg/apache/mina/common/ByteBuffer;
    .locals 0

    .line 239
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/mina/common/ByteBuffer;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BII)Lorg/apache/mina/common/ByteBuffer;
    .locals 0

    .line 250
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/mina/common/ByteBuffer;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract buf()Ljava/nio/ByteBuffer;
.end method

.method public abstract capacity()I
.end method

.method public abstract clear()Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract compact()Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract compareTo(Lorg/apache/mina/common/ByteBuffer;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract fill(BI)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract fill(I)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract fillAndReset(BI)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract fillAndReset(I)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract flip()Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public abstract get([B)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract get([BII)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getHexDump()Ljava/lang/String;
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation
.end method

.method public abstract getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation
.end method

.method public abstract getUnsigned()S
.end method

.method public abstract getUnsigned(I)S
.end method

.method public abstract getUnsignedInt()J
.end method

.method public abstract getUnsignedInt(I)J
.end method

.method public abstract getUnsignedShort()I
.end method

.method public abstract getUnsignedShort(I)I
.end method

.method public abstract hasRemaining()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAutoExpand()Z
.end method

.method public abstract isDirect()Z
.end method

.method public abstract limit()I
.end method

.method public abstract limit(I)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract mark()Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract order(Ljava/nio/ByteOrder;)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract position()I
.end method

.method public abstract position(I)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract put(B)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract put(IB)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract put([B)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract put([BII)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putChar(C)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putChar(IC)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putDouble(D)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putDouble(ID)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putFloat(F)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putFloat(IF)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putInt(I)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putInt(II)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putLong(IJ)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putLong(J)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putShort(IS)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putShort(S)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract remaining()I
.end method

.method public abstract reset()Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract rewind()Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract setAutoExpand(Z)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract skip(I)Lorg/apache/mina/common/ByteBuffer;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
