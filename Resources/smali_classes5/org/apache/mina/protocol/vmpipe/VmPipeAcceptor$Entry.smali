.class Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;
.super Ljava/lang/Object;
.source "VmPipeAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field final acceptor:Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;

.field final address:Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

.field final handler:Lorg/apache/mina/protocol/ProtocolHandler;

.field final managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;Lorg/apache/mina/protocol/ProtocolHandler;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->acceptor:Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;

    .line 96
    iput-object p2, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->address:Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    .line 97
    iput-object p3, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    .line 98
    iput-object p4, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;Lorg/apache/mina/protocol/ProtocolHandler;Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;-><init>(Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;Lorg/apache/mina/protocol/ProtocolHandler;)V

    return-void
.end method
