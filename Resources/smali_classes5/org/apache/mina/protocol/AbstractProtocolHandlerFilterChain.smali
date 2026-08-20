.class public abstract Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;
.super Ljava/lang/Object;
.source "AbstractProtocolHandlerFilterChain.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandlerFilterChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
    }
.end annotation


# instance fields
.field private final filter2entry:Ljava/util/Map;

.field private final head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

.field private final name2entry:Ljava/util/Map;

.field private final tail:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;


# direct methods
.method protected constructor <init>()V
    .locals 9

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->filter2entry:Ljava/util/Map;

    .line 62
    new-instance v0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-virtual {p0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->createHeadFilter()Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "head"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 63
    new-instance v8, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-virtual {p0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->createTailFilter()Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v6

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;)V

    iput-object v8, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->tail:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 64
    invoke-static {v0, v8}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$102(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextExceptionCaught(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextMessageReceived(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextMessageSent(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextSessionOpened(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextSessionClosed(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextSessionIdle(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method private callNextExceptionCaught(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 403
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private callNextMessageReceived(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 363
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->messageReceived(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 367
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageSent(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 383
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->messageSent(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 387
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionClosed(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 1

    .line 322
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->sessionClosed(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 327
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionIdle(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 343
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->sessionIdle(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 347
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionOpened(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 1

    .line 303
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->sessionOpened(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 307
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterWrite(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 428
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$500(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/protocol/ProtocolHandlerFilter;->filterWrite(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 432
    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 288
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

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
    .locals 3

    .line 271
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    if-eqz v0, :cond_0

    return-object v0

    .line 274
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

.method private register(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    .locals 8

    .line 257
    new-instance v7, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;)V

    .line 258
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$302(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 259
    invoke-static {p1, v7}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$102(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 260
    iget-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->filter2entry:Ljava/util/Map;

    invoke-interface {p1, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    .locals 0

    monitor-enter p0

    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object p1

    .line 221
    invoke-direct {p0, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->register(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    .locals 0

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object p1

    .line 207
    invoke-direct {p0, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->register(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->register(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->tail:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->register(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
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

    .line 248
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 249
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createHeadFilter()Lorg/apache/mina/protocol/ProtocolHandlerFilter;
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;)V

    return-object v0
.end method

.method protected createTailFilter()Lorg/apache/mina/protocol/ProtocolHandlerFilter;
    .locals 1

    .line 121
    new-instance v0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$2;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;)V

    return-object v0
.end method

.method protected abstract doWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 394
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextExceptionCaught(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->tail:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 414
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public getChild(Ljava/lang/String;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 173
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 3

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v1

    .line 440
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->tail:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    if-eq v1, v2, :cond_0

    .line 442
    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildrenReversed()Ljava/util/List;
    .locals 3

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->tail:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v1

    .line 453
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    if-eq v1, v2, :cond_0

    .line 455
    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 354
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextMessageReceived(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 374
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextMessageSent(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v1

    .line 233
    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    move-result-object v2

    .line 234
    invoke-static {v1, v2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$102(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 235
    invoke-static {v2, v1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$302(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 237
    iget-object v1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {v0}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->filter2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 314
    invoke-direct {p0, v0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextSessionClosed(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 334
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextSessionIdle(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->head:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 295
    invoke-direct {p0, v0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;->callNextSessionOpened(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void
.end method
