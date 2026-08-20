.class public interface abstract Lorg/apache/mina/common/Session;
.super Ljava/lang/Object;
.source "Session.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(Z)V
.end method

.method public abstract getAttachment()Ljava/lang/Object;
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeKeys()Ljava/util/Set;
.end method

.method public abstract getConfig()Lorg/apache/mina/common/SessionConfig;
.end method

.method public abstract getLastIoTime()J
.end method

.method public abstract getLastReadTime()J
.end method

.method public abstract getLastWriteTime()J
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getReadBytes()J
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getTransportType()Lorg/apache/mina/common/TransportType;
.end method

.method public abstract getWrittenBytes()J
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isIdle(Lorg/apache/mina/common/IdleStatus;)Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method
