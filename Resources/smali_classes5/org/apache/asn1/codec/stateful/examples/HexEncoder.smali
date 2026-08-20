.class public Lorg/apache/asn1/codec/stateful/examples/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/StatefulEncoder;


# static fields
.field private static final CHUNK_SZ:I = 0x80


# instance fields
.field private final HEXCHAR_LUT:[B

.field private buf:Ljava/nio/ByteBuffer;

.field private cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

.field private monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    .line 38
    new-instance v0, Lorg/apache/asn1/codec/stateful/EncoderMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/asn1/codec/stateful/EncoderMonitorAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    .line 39
    new-instance v0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder$1;

    invoke-direct {v0, p0}, Lorg/apache/asn1/codec/stateful/examples/HexEncoder$1;-><init>(Lorg/apache/asn1/codec/stateful/examples/HexEncoder;)V

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    const/16 v0, 0x10

    .line 44
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->HEXCHAR_LUT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/EncoderException;
        }
    .end annotation

    .line 59
    check-cast p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 76
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p0, v1}, Lorg/apache/asn1/codec/stateful/EncoderCallback;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    iget-object v2, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 82
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->HEXCHAR_LUT:[B

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->HEXCHAR_LUT:[B

    and-int/lit8 v0, v0, 0xf

    aget-byte v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p0, v0}, Lorg/apache/asn1/codec/stateful/EncoderCallback;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p0, v0, v1}, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    :goto_1
    return-void
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 96
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 97
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    invoke-interface {v1, p0, v0, p1}, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->callbackSet(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    return-void
.end method

.method public setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    return-void
.end method
