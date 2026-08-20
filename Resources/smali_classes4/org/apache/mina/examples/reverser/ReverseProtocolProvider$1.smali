.class Lorg/apache/mina/examples/reverser/ReverseProtocolProvider$1;
.super Ljava/lang/Object;
.source "ReverseProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolCodecFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/mina/examples/reverser/TextLineDecoder;

    invoke-direct {v0}, Lorg/apache/mina/examples/reverser/TextLineDecoder;-><init>()V

    return-object v0
.end method

.method public newEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 1

    .line 45
    new-instance v0, Lorg/apache/mina/examples/reverser/TextLineEncoder;

    invoke-direct {v0}, Lorg/apache/mina/examples/reverser/TextLineEncoder;-><init>()V

    return-object v0
.end method
