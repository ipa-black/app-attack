.class public Lorg/apache/mina/protocol/ProtocolSessionFilterChain;
.super Lorg/apache/mina/protocol/AbstractProtocolFilterChain;
.source "ProtocolSessionFilterChain.java"


# instance fields
.field private final managerChain:Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;


# direct methods
.method public constructor <init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->managerChain:Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;

    return-void
.end method


# virtual methods
.method protected doWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->managerChain:Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method
