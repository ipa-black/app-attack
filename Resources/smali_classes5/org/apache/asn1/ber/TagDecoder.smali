.class public Lorg/apache/asn1/ber/TagDecoder;
.super Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;
.source "TagDecoder.java"


# instance fields
.field private final tag:Lorg/apache/asn1/ber/Tag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/asn1/ber/Tag;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tag;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TagDecoder;->tag:Lorg/apache/asn1/ber/Tag;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 48
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 53
    iget-object v1, p0, Lorg/apache/asn1/ber/TagDecoder;->tag:Lorg/apache/asn1/ber/Tag;

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/Tag;->add(B)V

    .line 55
    iget-object v0, p0, Lorg/apache/asn1/ber/TagDecoder;->tag:Lorg/apache/asn1/ber/Tag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tag;->isFixated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p1, p0, Lorg/apache/asn1/ber/TagDecoder;->tag:Lorg/apache/asn1/ber/Tag;

    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/TagDecoder;->decodeOccurred(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lorg/apache/asn1/ber/TagDecoder;->tag:Lorg/apache/asn1/ber/Tag;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tag;->clear()V

    :cond_1
    return-void
.end method
