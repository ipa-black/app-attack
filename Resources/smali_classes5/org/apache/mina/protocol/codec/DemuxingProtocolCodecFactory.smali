.class public Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;
.super Ljava/lang/Object;
.source "DemuxingProtocolCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolCodecFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;,
        Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;
    }
.end annotation


# instance fields
.field private decoders:[Lorg/apache/mina/protocol/codec/MessageDecoder;

.field private final encoders:Ljava/util/Map;

.field private final protocolDecoder:Lorg/apache/mina/protocol/ProtocolDecoder;

.field private final protocolEncoder:Lorg/apache/mina/protocol/ProtocolEncoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Lorg/apache/mina/protocol/codec/MessageDecoder;

    iput-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->decoders:[Lorg/apache/mina/protocol/codec/MessageDecoder;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->encoders:Ljava/util/Map;

    .line 55
    new-instance v0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;-><init>(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$1;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->protocolEncoder:Lorg/apache/mina/protocol/ProtocolEncoder;

    .line 57
    new-instance v0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolDecoderImpl;-><init>(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->protocolDecoder:Lorg/apache/mina/protocol/ProtocolDecoder;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)Ljava/util/Map;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->encoders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)[Lorg/apache/mina/protocol/codec/MessageDecoder;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->decoders:[Lorg/apache/mina/protocol/codec/MessageDecoder;

    return-object p0
.end method


# virtual methods
.method public newDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->protocolDecoder:Lorg/apache/mina/protocol/ProtocolDecoder;

    return-object v0
.end method

.method public newEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->protocolEncoder:Lorg/apache/mina/protocol/ProtocolEncoder;

    return-object v0
.end method

.method public register(Lorg/apache/mina/protocol/codec/MessageDecoder;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->decoders:[Lorg/apache/mina/protocol/codec/MessageDecoder;

    .line 80
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/mina/protocol/codec/MessageDecoder;

    .line 81
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    array-length v0, v0

    aput-object p1, v1, v0

    .line 83
    iput-object v1, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->decoders:[Lorg/apache/mina/protocol/codec/MessageDecoder;

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "decoder"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lorg/apache/mina/protocol/codec/MessageEncoder;)V
    .locals 3

    .line 65
    invoke-interface {p1}, Lorg/apache/mina/protocol/codec/MessageEncoder;->getMessageTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 69
    iget-object v2, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->encoders:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
