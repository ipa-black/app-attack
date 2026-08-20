.class public interface abstract Lorg/apache/mina/protocol/ProtocolSession;
.super Ljava/lang/Object;
.source "ProtocolSession.java"

# interfaces
.implements Lorg/apache/mina/common/Session;


# virtual methods
.method public abstract getDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
.end method

.method public abstract getEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
.end method

.method public abstract getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
.end method

.method public abstract getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
.end method

.method public abstract write(Ljava/lang/Object;)V
.end method
