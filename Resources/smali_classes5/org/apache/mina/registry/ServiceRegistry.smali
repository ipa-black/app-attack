.class public interface abstract Lorg/apache/mina/registry/ServiceRegistry;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# virtual methods
.method public abstract bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/io/IoHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAllServices()Ljava/util/Set;
.end method

.method public abstract getIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;
.end method

.method public abstract getProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;
.end method

.method public abstract getServices(I)Ljava/util/Set;
.end method

.method public abstract getServices(Ljava/lang/String;)Ljava/util/Set;
.end method

.method public abstract getServices(Lorg/apache/mina/common/TransportType;)Ljava/util/Set;
.end method

.method public abstract unbind(Lorg/apache/mina/registry/Service;)V
.end method

.method public abstract unbindAll()V
.end method
