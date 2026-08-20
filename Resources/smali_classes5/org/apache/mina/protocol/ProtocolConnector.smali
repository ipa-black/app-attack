.class public interface abstract Lorg/apache/mina/protocol/ProtocolConnector;
.super Ljava/lang/Object;
.source "ProtocolConnector.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolSessionManager;


# virtual methods
.method public abstract connect(Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
