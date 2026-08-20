.class public Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;
.super Ljava/lang/Object;
.source "SimpleProtocolEncoderOutput.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolEncoderOutput;


# instance fields
.field private final bufferQueue:Lorg/apache/mina/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    return-void
.end method


# virtual methods
.method public getBufferQueue()Lorg/apache/mina/util/Queue;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    return-object v0
.end method

.method public mergeAll()V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 50
    iget-object v2, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/Queue;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v0

    .line 59
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/common/ByteBuffer;

    if-nez v1, :cond_2

    .line 70
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 71
    iget-object v1, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_2
    invoke-virtual {v0, v1}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 66
    invoke-virtual {v1}, Lorg/apache/mina/common/ByteBuffer;->release()V

    goto :goto_1
.end method

.method public write(Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;->bufferQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    return-void
.end method
