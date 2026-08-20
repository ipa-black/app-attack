.class public Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;
.super Ljava/lang/Object;
.source "SimpleProtocolDecoderOutput.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolDecoderOutput;


# instance fields
.field private final messageQueue:Lorg/apache/mina/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;->messageQueue:Lorg/apache/mina/util/Queue;

    return-void
.end method


# virtual methods
.method public getMessageQueue()Lorg/apache/mina/util/Queue;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;->messageQueue:Lorg/apache/mina/util/Queue;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;->messageQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    return-void
.end method
