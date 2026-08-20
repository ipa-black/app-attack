.class public interface abstract Lorg/apache/mina/io/IoHandlerFilter;
.super Ljava/lang/Object;
.source "IoHandlerFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/IoHandlerFilter$NextFilter;
    }
.end annotation


# virtual methods
.method public abstract dataRead(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
.end method

.method public abstract dataWritten(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V
.end method

.method public abstract exceptionCaught(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
.end method

.method public abstract filterWrite(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
.end method

.method public abstract sessionClosed(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
.end method

.method public abstract sessionIdle(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
.end method

.method public abstract sessionOpened(Lorg/apache/mina/io/IoHandlerFilter$NextFilter;Lorg/apache/mina/io/IoSession;)V
.end method
