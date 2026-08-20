.class public abstract Lorg/apache/mina/protocol/codec/CumulativeProtocolDecoder;
.super Ljava/lang/Object;
.source "CumulativeProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolDecoder;


# instance fields
.field private buf:Lorg/apache/mina/common/ByteBuffer;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/protocol/codec/CumulativeProtocolDecoder;->buf:Lorg/apache/mina/common/ByteBuffer;

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lorg/apache/mina/common/ByteBuffer;->setAutoExpand(Z)Lorg/apache/mina/common/ByteBuffer;

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->getTransportType()Lorg/apache/mina/common/TransportType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/common/TransportType;->isStateless()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/CumulativeProtocolDecoder;->buf:Lorg/apache/mina/common/ByteBuffer;

    .line 96
    invoke-virtual {v0, p2}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 97
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 103
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->position()I

    move-result p2

    .line 104
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/mina/protocol/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->compact()Lorg/apache/mina/common/ByteBuffer;

    return-void

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->position()I

    move-result v1

    if-eq v1, p2, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "doDecode() can\'t return true when buffer is not consumed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 118
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->compact()Lorg/apache/mina/common/ByteBuffer;

    .line 119
    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This decoder doesn\'t work for stateless transport types."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract doDecode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation
.end method
