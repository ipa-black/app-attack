.class public Lorg/apache/mina/registry/SimpleServiceRegistry;
.super Ljava/lang/Object;
.source "SimpleServiceRegistry.java"

# interfaces
.implements Lorg/apache/mina/registry/ServiceRegistry;


# instance fields
.field protected final datagramIoAcceptor:Lorg/apache/mina/io/IoAcceptor;

.field protected final datagramProtocolAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

.field protected final ioThreadPoolFilter:Lorg/apache/mina/io/filter/IoThreadPoolFilter;

.field protected final protocolThreadPoolFilter:Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

.field private final services:Ljava/util/Set;

.field protected final socketIoAcceptor:Lorg/apache/mina/io/IoAcceptor;

.field protected final socketProtocolAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

.field protected final vmPipeAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-direct {v0}, Lorg/apache/mina/io/socket/SocketAcceptor;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->socketIoAcceptor:Lorg/apache/mina/io/IoAcceptor;

    .line 39
    new-instance v1, Lorg/apache/mina/io/datagram/DatagramAcceptor;

    invoke-direct {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->datagramIoAcceptor:Lorg/apache/mina/io/IoAcceptor;

    .line 41
    new-instance v2, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;

    invoke-direct {v2, v0}, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;-><init>(Lorg/apache/mina/io/IoAcceptor;)V

    iput-object v2, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->socketProtocolAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

    .line 44
    new-instance v3, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;

    invoke-direct {v3, v1}, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;-><init>(Lorg/apache/mina/io/IoAcceptor;)V

    iput-object v3, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->datagramProtocolAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

    .line 47
    new-instance v4, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;

    invoke-direct {v4}, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;-><init>()V

    iput-object v4, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->vmPipeAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

    .line 49
    new-instance v5, Lorg/apache/mina/io/filter/IoThreadPoolFilter;

    invoke-direct {v5}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;-><init>()V

    iput-object v5, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->ioThreadPoolFilter:Lorg/apache/mina/io/filter/IoThreadPoolFilter;

    .line 51
    new-instance v6, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

    invoke-direct {v6}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;-><init>()V

    iput-object v6, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->protocolThreadPoolFilter:Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

    .line 53
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    .line 57
    invoke-interface {v0}, Lorg/apache/mina/io/IoAcceptor;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object v0

    const-string v7, "threadPool"

    invoke-interface {v0, v7, v5}, Lorg/apache/mina/io/IoFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V

    .line 58
    invoke-interface {v1}, Lorg/apache/mina/io/IoAcceptor;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, v7, v5}, Lorg/apache/mina/io/IoFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V

    .line 59
    invoke-interface {v2}, Lorg/apache/mina/protocol/ProtocolAcceptor;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lorg/apache/mina/protocol/ProtocolFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    .line 60
    invoke-interface {v3}, Lorg/apache/mina/protocol/ProtocolAcceptor;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lorg/apache/mina/protocol/ProtocolFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    .line 61
    invoke-interface {v4}, Lorg/apache/mina/protocol/ProtocolAcceptor;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lorg/apache/mina/protocol/ProtocolFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    return-void
.end method

.method private startThreadPools()V
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->ioThreadPoolFilter:Lorg/apache/mina/io/filter/IoThreadPoolFilter;

    invoke-virtual {v0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;->start()V

    .line 225
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->protocolThreadPoolFilter:Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

    invoke-virtual {v0}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->start()V

    return-void
.end method

.method private stopThreadPools()V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->ioThreadPoolFilter:Lorg/apache/mina/io/filter/IoThreadPoolFilter;

    invoke-virtual {v0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;->stop()V

    .line 234
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->protocolThreadPoolFilter:Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

    invoke-virtual {v0}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->stop()V

    return-void
.end method


# virtual methods
.method public bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/io/IoHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getTransportType()Lorg/apache/mina/common/TransportType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/registry/SimpleServiceRegistry;->findIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/mina/io/IoAcceptor;->bind(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)V

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;->startThreadPools()V

    .line 69
    iget-object p2, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getTransportType()Lorg/apache/mina/common/TransportType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/registry/SimpleServiceRegistry;->findProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/mina/protocol/ProtocolAcceptor;->bind(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 77
    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;->startThreadPools()V

    .line 78
    iget-object p2, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected findIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;
    .locals 3

    .line 195
    sget-object v0, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    if-ne p1, v0, :cond_0

    .line 196
    iget-object p1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->socketIoAcceptor:Lorg/apache/mina/io/IoAcceptor;

    return-object p1

    .line 197
    :cond_0
    sget-object v0, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    if-ne p1, v0, :cond_1

    .line 198
    iget-object p1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->datagramIoAcceptor:Lorg/apache/mina/io/IoAcceptor;

    return-object p1

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported transport type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;
    .locals 3

    .line 208
    sget-object v0, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    if-ne p1, v0, :cond_0

    .line 209
    iget-object p1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->socketProtocolAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

    return-object p1

    .line 210
    :cond_0
    sget-object v0, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    if-ne p1, v0, :cond_1

    .line 211
    iget-object p1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->datagramProtocolAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

    return-object p1

    .line 212
    :cond_1
    sget-object v0, Lorg/apache/mina/common/TransportType;->VM_PIPE:Lorg/apache/mina/common/TransportType;

    if-ne p1, v0, :cond_2

    .line 213
    iget-object p1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->vmPipeAcceptor:Lorg/apache/mina/protocol/ProtocolAcceptor;

    return-object p1

    .line 215
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unsupported transport type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getAllServices()Ljava/util/Set;
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/mina/registry/SimpleServiceRegistry;->findIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;

    move-result-object p1

    return-object p1
.end method

.method public getProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/mina/registry/SimpleServiceRegistry;->findProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;

    move-result-object p1

    return-object p1
.end method

.method public getServices(I)Ljava/util/Set;
    .locals 5

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 165
    iget-object v1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/registry/Service;

    .line 169
    invoke-virtual {v2}, Lorg/apache/mina/registry/Service;->getAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 172
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_1

    .line 174
    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    goto :goto_1

    .line 176
    :cond_1
    instance-of v4, v3, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    if-eqz v4, :cond_2

    .line 178
    check-cast v3, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    invoke-virtual {v3}, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->getPort()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ne v3, p1, :cond_0

    .line 187
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public declared-synchronized getServices(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 135
    iget-object v1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/registry/Service;

    .line 139
    invoke-virtual {v2}, Lorg/apache/mina/registry/Service;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getServices(Lorg/apache/mina/common/TransportType;)Ljava/util/Set;
    .locals 4

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 150
    iget-object v1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/registry/Service;

    .line 154
    invoke-virtual {v2}, Lorg/apache/mina/registry/Service;->getTransportType()Lorg/apache/mina/common/TransportType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 156
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized unbind(Lorg/apache/mina/registry/Service;)V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getTransportType()Lorg/apache/mina/common/TransportType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/registry/SimpleServiceRegistry;->findProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/protocol/ProtocolAcceptor;->unbind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/registry/Service;->getAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/protocol/ProtocolAcceptor;->unbind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :catch_1
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;->stopThreadPools()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unbindAll()V
    .locals 2

    monitor-enter p0

    .line 109
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/mina/registry/SimpleServiceRegistry;->services:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/registry/Service;

    .line 113
    invoke-virtual {p0, v1}, Lorg/apache/mina/registry/SimpleServiceRegistry;->unbind(Lorg/apache/mina/registry/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
