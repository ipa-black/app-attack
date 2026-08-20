.class public interface abstract Lorg/apache/mina/io/IoSession;
.super Ljava/lang/Object;
.source "IoSession.java"

# interfaces
.implements Lorg/apache/mina/common/Session;


# virtual methods
.method public abstract getFilterChain()Lorg/apache/mina/io/IoFilterChain;
.end method

.method public abstract getHandler()Lorg/apache/mina/io/IoHandler;
.end method

.method public abstract write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
.end method
