.class public Lorg/apache/mina/examples/reverser/TextLineDecoder;
.super Ljava/lang/Object;
.source "TextLineDecoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolDecoder;


# instance fields
.field private decodeBuf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/examples/reverser/TextLineDecoder;->decodeBuf:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 44
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->get()B

    move-result p1

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    .line 55
    iget-object v0, p0, Lorg/apache/mina/examples/reverser/TextLineDecoder;->decodeBuf:Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lorg/apache/mina/examples/reverser/TextLineDecoder;->decodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lorg/apache/mina/examples/reverser/TextLineDecoder;->decodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 52
    invoke-interface {p3, p1}, Lorg/apache/mina/protocol/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    .line 59
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/mina/examples/reverser/TextLineDecoder;->decodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 v0, 0x100

    if-gt p1, v0, :cond_3

    .line 65
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_3
    iget-object p1, p0, Lorg/apache/mina/examples/reverser/TextLineDecoder;->decodeBuf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 62
    new-instance p1, Lorg/apache/mina/protocol/ProtocolViolationException;

    const-string p2, "The line is too long."

    invoke-direct {p1, p2}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
