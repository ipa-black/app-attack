.class public Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;
.super Lorg/apache/mina/common/BaseSessionManager;
.source "VmPipeAcceptor.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;
    }
.end annotation


# static fields
.field static final boundHandlers:Ljava/util/Map;


# instance fields
.field private final filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionManager;-><init>()V

    .line 28
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    .line 36
    new-instance v1, Lorg/apache/mina/protocol/vmpipe/VmPipeFilter;

    invoke-direct {v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeFilter;-><init>()V

    const-string v2, "VMPipe"

    invoke-virtual {v0, v2, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Address already bound: "

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 45
    instance-of v1, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v1

    .line 51
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;

    move-object v5, p1

    check-cast v5, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    iget-object v6, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    invoke-interface {p2}, Lorg/apache/mina/protocol/ProtocolProvider;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;-><init>(Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;Lorg/apache/mina/protocol/ProtocolHandler;Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$1;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v1

    return-void

    .line 53
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address must be VmPipeAddress."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocolProvider"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    return-object v0
.end method

.method public unbind(Ljava/net/SocketAddress;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 69
    sget-object v0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "address"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
