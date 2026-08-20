.class abstract Lorg/apache/mina/io/datagram/DatagramSessionManager;
.super Lorg/apache/mina/common/BaseSessionManager;
.source "DatagramSessionManager.java"

# interfaces
.implements Lorg/apache/mina/io/IoSessionManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionManager;-><init>()V

    return-void
.end method


# virtual methods
.method abstract closeSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
.end method

.method abstract flushSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
.end method
