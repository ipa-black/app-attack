.class public Lorg/apache/kerberos/protocol/KerberosDecoder;
.super Ljava/lang/Object;
.source "KerberosDecoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolDecoder;


# instance fields
.field private decoder:Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/protocol/KerberosDecoder;->decoder:Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;

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

    .line 39
    :try_start_0
    iget-object p1, p0, Lorg/apache/kerberos/protocol/KerberosDecoder;->decoder:Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;

    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;->decode(Ljava/nio/ByteBuffer;)Lorg/apache/kerberos/messages/KdcRequest;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/mina/protocol/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
