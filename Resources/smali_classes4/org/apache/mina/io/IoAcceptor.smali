.class public interface abstract Lorg/apache/mina/io/IoAcceptor;
.super Ljava/lang/Object;
.source "IoAcceptor.java"

# interfaces
.implements Lorg/apache/mina/io/IoSessionManager;


# virtual methods
.method public abstract bind(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unbind(Ljava/net/SocketAddress;)V
.end method
