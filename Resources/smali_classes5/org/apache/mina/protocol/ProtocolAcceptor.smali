.class public interface abstract Lorg/apache/mina/protocol/ProtocolAcceptor;
.super Ljava/lang/Object;
.source "ProtocolAcceptor.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolSessionManager;


# virtual methods
.method public abstract bind(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unbind(Ljava/net/SocketAddress;)V
.end method
