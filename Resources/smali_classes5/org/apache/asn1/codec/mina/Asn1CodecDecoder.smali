.class public Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;
.super Ljava/lang/Object;
.source "Asn1CodecDecoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;
    }
.end annotation


# instance fields
.field private final callback:Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;

.field private final decoder:Lorg/apache/asn1/codec/stateful/StatefulDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/asn1/codec/stateful/StatefulDecoder;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;-><init>(Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$1;)V

    iput-object v0, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;->callback:Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;

    .line 30
    invoke-interface {p1, v0}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 31
    iput-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;->decoder:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;->callback:Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;

    invoke-static {p1, p3}, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;->access$102(Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Lorg/apache/mina/protocol/ProtocolDecoderOutput;

    .line 41
    :try_start_0
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;->decoder:Lorg/apache/asn1/codec/stateful/StatefulDecoder;

    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/asn1/codec/stateful/StatefulDecoder;->decode(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/asn1/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Lorg/apache/mina/protocol/ProtocolViolationException;

    const-string p3, "Failed to decode."

    invoke-direct {p2, p3, p1}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
