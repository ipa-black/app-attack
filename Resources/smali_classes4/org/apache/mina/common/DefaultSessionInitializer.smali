.class public Lorg/apache/mina/common/DefaultSessionInitializer;
.super Ljava/lang/Object;
.source "DefaultSessionInitializer.java"

# interfaces
.implements Lorg/apache/mina/common/SessionInitializer;


# instance fields
.field private final attributes:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/common/DefaultSessionInitializer;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/mina/common/DefaultSessionInitializer;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeKeys()Ljava/util/Set;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/common/DefaultSessionInitializer;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initializeSession(Lorg/apache/mina/common/Session;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-interface {p1}, Lorg/apache/mina/common/Session;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lorg/apache/mina/io/socket/SocketSessionConfig;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lorg/apache/mina/io/socket/SocketSessionConfig;

    .line 100
    invoke-virtual {v0, v2}, Lorg/apache/mina/io/socket/SocketSessionConfig;->setReuseAddress(Z)V

    .line 101
    invoke-virtual {v0, v2}, Lorg/apache/mina/io/socket/SocketSessionConfig;->setKeepAlive(Z)V

    goto :goto_0

    .line 103
    :cond_0
    instance-of v1, v0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    if-eqz v1, :cond_1

    .line 105
    check-cast v0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    .line 106
    invoke-virtual {v0, v2}, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->setReuseAddress(Z)V

    .line 109
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/common/DefaultSessionInitializer;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/common/Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/mina/common/DefaultSessionInitializer;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/mina/common/DefaultSessionInitializer;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
