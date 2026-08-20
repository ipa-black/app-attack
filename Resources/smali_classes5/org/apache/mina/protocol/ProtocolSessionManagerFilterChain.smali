.class public abstract Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;
.super Lorg/apache/mina/protocol/AbstractProtocolFilterChain;
.source "ProtocolSessionManagerFilterChain.java"


# instance fields
.field private final manager:Lorg/apache/mina/protocol/ProtocolSessionManager;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;->manager:Lorg/apache/mina/protocol/ProtocolSessionManager;

    return-void
.end method


# virtual methods
.method protected createTailFilter()Lorg/apache/mina/protocol/ProtocolFilter;
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain$1;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;)V

    return-object v0
.end method

.method public getManager()Lorg/apache/mina/protocol/ProtocolSessionManager;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;->manager:Lorg/apache/mina/protocol/ProtocolSessionManager;

    return-object v0
.end method
