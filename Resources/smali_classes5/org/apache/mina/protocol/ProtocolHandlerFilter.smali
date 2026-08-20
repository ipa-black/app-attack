.class public interface abstract Lorg/apache/mina/protocol/ProtocolHandlerFilter;
.super Ljava/lang/Object;
.source "ProtocolHandlerFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;
    }
.end annotation


# virtual methods
.method public abstract exceptionCaught(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
.end method

.method public abstract filterWrite(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public abstract messageReceived(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public abstract messageSent(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public abstract sessionClosed(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
.end method

.method public abstract sessionIdle(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
.end method

.method public abstract sessionOpened(Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;Lorg/apache/mina/protocol/ProtocolSession;)V
.end method
