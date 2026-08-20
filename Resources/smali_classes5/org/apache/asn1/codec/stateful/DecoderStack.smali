.class public Lorg/apache/asn1/codec/stateful/DecoderStack;
.super Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;
.source "DecoderStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;
    }
.end annotation


# instance fields
.field private decoders:Ljava/util/Stack;

.field private final topcb:Lorg/apache/asn1/codec/stateful/DecoderCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    .line 49
    new-instance v0, Lorg/apache/asn1/codec/stateful/DecoderStack$1;

    invoke-direct {v0, p0}, Lorg/apache/asn1/codec/stateful/DecoderStack$1;-><init>(Lorg/apache/asn1/codec/stateful/DecoderStack;)V

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->topcb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 146
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/apache/asn1/codec/stateful/DecoderStack;->pop()Lorg/apache/asn1/codec/stateful/StatefulDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized decode(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/asn1/codec/stateful/DecoderStack;->decodeOccurred(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    invoke-interface {v0, p1}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->decode(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized pop()Lorg/apache/asn1/codec/stateful/StatefulDecoder;
    .locals 3

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    monitor-exit p0

    return-object p0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    const/4 v1, 0x0

    .line 97
    invoke-interface {v0, v1}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 99
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    .line 102
    iget-object v2, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->topcb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    invoke-interface {v1, v2}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Lorg/apache/asn1/codec/stateful/StatefulDecoder;)V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->topcb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    invoke-interface {p1, v0}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 71
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    .line 74
    new-instance v1, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/asn1/codec/stateful/DecoderStack$ChainingCallback;-><init>(Lorg/apache/asn1/codec/stateful/DecoderStack;Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/StatefulDecoder;)V

    .line 75
    invoke-interface {v0, v1}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/DecoderStack;->decoders:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
