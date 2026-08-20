.class public interface abstract Lorg/apache/mina/io/IoConnector;
.super Ljava/lang/Object;
.source "IoConnector.java"

# interfaces
.implements Lorg/apache/mina/io/IoSessionManager;


# virtual methods
.method public abstract connect(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
