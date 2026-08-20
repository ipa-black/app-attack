.class public Lorg/apache/asn1/ber/TupleTreeDecoder;
.super Ljava/lang/Object;
.source "TupleTreeDecoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/StatefulDecoder;


# instance fields
.field cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

.field decoder:Lorg/apache/asn1/ber/BERDecoder;

.field monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

.field stack:Ljava/util/Stack;

.field valueChunks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    .line 46
    new-instance v0, Lorg/apache/asn1/ber/BERDecoder;

    invoke-direct {v0}, Lorg/apache/asn1/ber/BERDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 50
    new-instance v0, Lorg/apache/asn1/codec/stateful/DecoderMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/asn1/codec/stateful/DecoderMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->valueChunks:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;

    invoke-direct {v0, p0}, Lorg/apache/asn1/ber/TupleTreeDecoder$1;-><init>(Lorg/apache/asn1/ber/TupleTreeDecoder;)V

    .line 103
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/BERDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 104
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/BERDecoder;->setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/asn1/ber/TupleTreeDecoder;Lorg/apache/asn1/ber/Tuple;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/TupleTreeDecoder;->handleTuple(Lorg/apache/asn1/ber/Tuple;)V

    return-void
.end method

.method private handleTuple(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 118
    iget-boolean v0, p1, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->valueChunks:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;Ljava/util/List;)V

    .line 122
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->valueChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 127
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 128
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 136
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/codec/stateful/DecoderCallback;->decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static treeDecode(Ljava/nio/ByteBuffer;)Lorg/apache/asn1/ber/TupleNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeDecoder;

    invoke-direct {v0}, Lorg/apache/asn1/ber/TupleTreeDecoder;-><init>()V

    .line 165
    new-instance v1, Lorg/apache/asn1/codec/stateful/CallbackHistory;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/asn1/codec/stateful/CallbackHistory;-><init>(I)V

    .line 167
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TupleTreeDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 168
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/TupleTreeDecoder;->decode(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v1}, Lorg/apache/asn1/codec/stateful/CallbackHistory;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_0
    invoke-virtual {v1}, Lorg/apache/asn1/codec/stateful/CallbackHistory;->getMostRecent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/asn1/ber/TupleNode;

    return-object p0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/BERDecoder;->decode(Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    return-void
.end method

.method public setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 1

    .line 195
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    .line 196
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/BERDecoder;->setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V

    return-void
.end method
