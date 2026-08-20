.class public interface abstract Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;
.super Ljava/lang/Object;
.source "ProtocolFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/ProtocolFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NextFilter"
.end annotation


# virtual methods
.method public abstract exceptionCaught(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Throwable;)V
.end method

.method public abstract filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public abstract messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public abstract messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method

.method public abstract sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
.end method

.method public abstract sessionIdle(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/IdleStatus;)V
.end method

.method public abstract sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
.end method
