.class public interface abstract Lorg/apache/mina/protocol/codec/MessageDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"


# static fields
.field public static final NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

.field public static final NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

.field public static final OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    sput-object v0, Lorg/apache/mina/protocol/codec/MessageDecoder;->OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    .line 48
    sget-object v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    sput-object v0, Lorg/apache/mina/protocol/codec/MessageDecoder;->NEED_DATA:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    .line 55
    sget-object v0, Lorg/apache/mina/protocol/codec/MessageDecoderResult;->NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    sput-object v0, Lorg/apache/mina/protocol/codec/MessageDecoder;->NOT_OK:Lorg/apache/mina/protocol/codec/MessageDecoderResult;

    return-void
.end method


# virtual methods
.method public abstract decodable(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/protocol/codec/MessageDecoderResult;
.end method

.method public abstract decode(Lorg/apache/mina/protocol/ProtocolSession;Lorg/apache/mina/common/ByteBuffer;Lorg/apache/mina/protocol/ProtocolDecoderOutput;)Lorg/apache/mina/protocol/codec/MessageDecoderResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation
.end method
