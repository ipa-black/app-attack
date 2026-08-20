.class public abstract Lorg/apache/mina/io/AbstractIoFilterChain;
.super Ljava/lang/Object;
.source "AbstractIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/io/IoFilterChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
    }
.end annotation


# instance fields
.field private final filter2entry:Ljava/util/Map;

.field private final head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

.field private final name2entry:Ljava/util/Map;

.field private final tail:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;


# direct methods
.method protected constructor <init>()V
    .locals 9

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->filter2entry:Ljava/util/Map;

    .line 63
    new-instance v0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-virtual {p0}, Lorg/apache/mina/io/AbstractIoFilterChain;->createHeadFilter()Lorg/apache/mina/io/IoFilter;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "head"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;Lorg/apache/mina/io/AbstractIoFilterChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 64
    new-instance v8, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-virtual {p0}, Lorg/apache/mina/io/AbstractIoFilterChain;->createTailFilter()Lorg/apache/mina/io/IoFilter;

    move-result-object v6

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;Lorg/apache/mina/io/AbstractIoFilterChain$1;)V

    iput-object v8, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->tail:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 65
    invoke-static {v0, v8}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$102(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextDataRead(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextDataWritten(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/mina/io/AbstractIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method private callNextDataRead(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1

    .line 364
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/io/IoFilter;->dataRead(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 368
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextDataWritten(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 1

    .line 384
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/io/IoFilter;->dataWritten(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 388
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextExceptionCaught(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 404
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/io/IoFilter;->exceptionCaught(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private callNextSessionClosed(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 324
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/io/IoFilter;->sessionClosed(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 328
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionIdle(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 344
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/io/IoFilter;->sessionIdle(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 348
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionOpened(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 305
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/io/IoFilter;->sessionOpened(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 309
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterWrite(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 429
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$500(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/mina/io/IoFilter;->filterWrite(Lorg/apache/mina/io/IoFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 433
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Other interceptor is using name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    if-eqz v0, :cond_0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown interceptor name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private register(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    .locals 8

    .line 259
    new-instance v7, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;Lorg/apache/mina/io/AbstractIoFilterChain$1;)V

    .line 260
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$302(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 261
    invoke-static {p1, v7}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$102(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 262
    iget-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->filter2entry:Ljava/util/Map;

    invoke-interface {p1, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    .locals 0

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object p1

    .line 223
    invoke-direct {p0, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->register(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    .locals 0

    monitor-enter p0

    .line 208
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object p1

    .line 209
    invoke-direct {p0, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->register(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->register(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->tail:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->register(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 250
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 251
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/mina/io/AbstractIoFilterChain;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createHeadFilter()Lorg/apache/mina/io/IoFilter;
    .locals 1

    .line 73
    new-instance v0, Lorg/apache/mina/io/AbstractIoFilterChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/AbstractIoFilterChain$1;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain;)V

    return-object v0
.end method

.method protected createTailFilter()Lorg/apache/mina/io/IoFilter;
    .locals 1

    .line 122
    new-instance v0, Lorg/apache/mina/io/AbstractIoFilterChain$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/AbstractIoFilterChain$2;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain;)V

    return-object v0
.end method

.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 355
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextDataRead(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    return-void
.end method

.method public dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 375
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextDataWritten(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract doWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 395
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->tail:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 415
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/io/AbstractIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public getChild(Ljava/lang/String;)Lorg/apache/mina/io/IoFilter;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 3

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v1

    .line 441
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->tail:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    if-eq v1, v2, :cond_0

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildrenReversed()Ljava/util/List;
    .locals 3

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->tail:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v1

    .line 454
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    if-eq v1, v2, :cond_0

    .line 456
    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-static {v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v1

    .line 235
    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    move-result-object v2

    .line 236
    invoke-static {v1, v2}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$102(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 237
    invoke-static {v2, v1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$302(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 239
    iget-object v1, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {v0}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->filter2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 316
    invoke-direct {p0, v0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 335
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain;->head:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 297
    invoke-direct {p0, v0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/IoSession;)V

    return-void
.end method
