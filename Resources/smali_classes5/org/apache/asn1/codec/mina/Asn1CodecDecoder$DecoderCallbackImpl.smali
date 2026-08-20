.class Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;
.super Ljava/lang/Object;
.source "Asn1CodecDecoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecoderCallbackImpl"
.end annotation


# instance fields
.field private decOut:Lorg/apache/mina/protocol/ProtocolDecoderOutput;

.field private final synthetic this$0:Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;->this$0:Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;-><init>(Lorg/apache/asn1/codec/mina/Asn1CodecDecoder;)V

    return-void
.end method

.method static synthetic access$102(Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Lorg/apache/mina/protocol/ProtocolDecoderOutput;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;->decOut:Lorg/apache/mina/protocol/ProtocolDecoderOutput;

    return-object p1
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecDecoder$DecoderCallbackImpl;->decOut:Lorg/apache/mina/protocol/ProtocolDecoderOutput;

    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    return-void
.end method
