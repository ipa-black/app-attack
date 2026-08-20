.class Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;
.super Lorg/apache/mina/protocol/codec/CumulativeProtocolDecoder;
.source "DemuxingProtocolCodecFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProtocolDecoderImpl"
.end annotation


# instance fields
.field private currentDecoder:Lorg/apache/mina/protocol/codec/MessageDecoder;

.field private final synthetic this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;

    const/16 p1, 0x10

    .line 156
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/codec/CumulativeProtocolDecoder;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doDecode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->currentDecoder:Lorg/apache/mina/protocol/codec/MessageDecoder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 164
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;

    invoke-static {v0}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->access$200(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)[Lorg/apache/mina/protocol/codec/MessageDecoder;

    move-result-object v0

    .line 166
    array-length v3, v0

    sub-int/2addr v3, v1

    move v4, v2

    :goto_0
    if-ltz v3, :cond_3

    .line 168
    aget-object v5, v0, v3

    .line 169
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->limit()I

    move-result v6

    .line 170
    invoke-virtual {p2, v2}, Lorg/apache/mina/common/ByteBuffer;->position(I)Lorg/apache/mina/common/ByteBuffer;

    .line 171
    invoke-interface {v5, p1, p2}, Lorg/apache/mina/protocol/codec/MessageDecoder;->decodable(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    move-result-object v7

    .line 172
    invoke-virtual {p2, v2}, Lorg/apache/mina/common/ByteBuffer;->position(I)Lorg/apache/mina/common/ByteBuffer;

    .line 173
    invoke-virtual {p2, v6}, Lorg/apache/mina/common/ByteBuffer;->limit(I)Lorg/apache/mina/common/ByteBuffer;

    .line 175
    sget-object v6, Lorg/apache/mina/protocol/codec/MessageDecoder;->OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    if-ne v7, v6, :cond_0

    .line 177
    iput-object v5, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->currentDecoder:Lorg/apache/mina/protocol/codec/MessageDecoder;

    goto :goto_2

    .line 180
    :cond_0
    sget-object v5, Lorg/apache/mina/protocol/codec/MessageDecoder;->NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    if-ne v7, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    :cond_1
    sget-object v5, Lorg/apache/mina/protocol/codec/MessageDecoder;->NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    if-ne v7, v5, :cond_2

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Unexpected decode result (see your decodable()): "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_3
    :goto_2
    array-length v0, v0

    if-eq v4, v0, :cond_4

    .line 198
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->currentDecoder:Lorg/apache/mina/protocol/codec/MessageDecoder;

    if-nez v0, :cond_5

    return v2

    .line 193
    :cond_4
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/mina/common/ByteBuffer;->position(I)Lorg/apache/mina/common/ByteBuffer;

    .line 194
    new-instance p1, Lorg/apache/mina/protocol/ProtocolViolationException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "No appropriate message decoder: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->getHexDump()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_5
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->currentDecoder:Lorg/apache/mina/protocol/codec/MessageDecoder;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/protocol/codec/MessageDecoder;->decode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    move-result-object p1

    .line 206
    sget-object p2, Lorg/apache/mina/protocol/codec/MessageDecoder;->OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    if-ne p1, p2, :cond_6

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;->currentDecoder:Lorg/apache/mina/protocol/codec/MessageDecoder;

    return v1

    .line 211
    :cond_6
    sget-object p2, Lorg/apache/mina/protocol/codec/MessageDecoder;->NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    if-ne p1, p2, :cond_7

    return v2

    .line 215
    :cond_7
    sget-object p2, Lorg/apache/mina/protocol/codec/MessageDecoder;->NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    if-ne p1, p2, :cond_8

    .line 217
    new-instance p1, Lorg/apache/mina/protocol/ProtocolViolationException;

    const-string p2, "Message decoder returned NOT_OK."

    invoke-direct {p1, p2}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Unexpected decode result (see your decode()): "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
