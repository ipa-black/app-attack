.class public abstract Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;
.super Ljava/lang/Object;
.source "DemuxingProtocolHandler.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolHandler;


# instance fields
.field private final type2handler:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    return-void
.end method

.method private findHandler(Ljava/lang/Class;)Lorg/apache/mina/protocol/handler/MessageHandler;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/handler/MessageHandler;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->findHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/handler/MessageHandler;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private findHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/handler/MessageHandler;
    .locals 3

    .line 93
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 95
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/handler/MessageHandler;

    if-nez v0, :cond_4

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->findHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/handler/MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 107
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->findHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/handler/MessageHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method


# virtual methods
.method protected deregisterMessageType(Ljava/lang/Class;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->findHandler(Ljava/lang/Class;)Lorg/apache/mina/protocol/handler/MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/protocol/handler/MessageHandler;->messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Lorg/apache/mina/protocol/handler/UnknownMessageTypeException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "No message handler found for message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/protocol/handler/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected registerMessageType(Ljava/lang/Class;Lorg/apache/mina/protocol/handler/MessageHandler;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/protocol/handler/DemuxingProtocolHandler;->type2handler:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
