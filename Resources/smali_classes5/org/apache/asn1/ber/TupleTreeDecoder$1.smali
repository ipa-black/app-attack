.class Lorg/apache/asn1/ber/TupleTreeDecoder$1;
.super Ljava/lang/Object;
.source "TupleTreeDecoder.java"

# interfaces
.implements Lorg/apache/asn1/ber/BERDecoderCallback;


# instance fields
.field private final synthetic this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;


# direct methods
.method constructor <init>(Lorg/apache/asn1/ber/TupleTreeDecoder;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    check-cast p2, Lorg/apache/asn1/ber/Tuple;

    invoke-static {p1, p2}, Lorg/apache/asn1/ber/TupleTreeDecoder;->access$000(Lorg/apache/asn1/ber/TupleTreeDecoder;Lorg/apache/asn1/ber/Tuple;)V

    return-void
.end method

.method public lengthDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 76
    iget-boolean v0, p1, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    .line 82
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    iget-object v0, v0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    iget-object v0, v0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {v1, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    iget-object v0, v0, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 89
    new-instance v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {v1, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 90
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 92
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    iget-object p1, p1, Lorg/apache/asn1/ber/TupleTreeDecoder;->stack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 71
    iget-object p1, p0, Lorg/apache/asn1/ber/TupleTreeDecoder$1;->this$0:Lorg/apache/asn1/ber/TupleTreeDecoder;

    iget-object p1, p1, Lorg/apache/asn1/ber/TupleTreeDecoder;->valueChunks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public tagDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 0

    return-void
.end method
