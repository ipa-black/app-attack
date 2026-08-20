.class Lorg/apache/mina/examples/sumup/ClientProtocolProvider$1;
.super Ljava/lang/Object;
.source "ClientProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolCodecFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 3

    .line 33
    new-instance v0, Lorg/apache/mina/protocol/codec/NettyDecoder;

    new-instance v1, Lorg/apache/mina/examples/sumup/SumUpMessageRecognizer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/mina/examples/sumup/SumUpMessageRecognizer;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/codec/NettyDecoder;-><init>(Lnet/gleamynode/netty2/MessageRecognizer;)V

    return-object v0
.end method

.method public newEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/mina/protocol/codec/NettyEncoder;

    invoke-direct {v0}, Lorg/apache/mina/protocol/codec/NettyEncoder;-><init>()V

    return-object v0
.end method
