.class Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;
.super Ljava/lang/Object;
.source "DemuxingProtocolCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProtocolEncoderImpl"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;


# direct methods
.method private constructor <init>(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;-><init>(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)V

    return-void
.end method

.method private findEncoder(Ljava/lang/Class;)Lorg/apache/mina/protocol/codec/MessageEncoder;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;

    invoke-static {v0}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->access$100(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/codec/MessageEncoder;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->findEncoder(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/codec/MessageEncoder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private findEncoder(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/codec/MessageEncoder;
    .locals 3

    .line 124
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->this$0:Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;

    invoke-static {v0}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;->access$100(Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/protocol/codec/MessageEncoder;

    if-nez v0, :cond_4

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->findEncoder(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/codec/MessageEncoder;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 136
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 138
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->findEncoder(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/protocol/codec/MessageEncoder;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public encode(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lorg/apache/mina/protocol/codec/DemuxingProtocolCodecFactory$ProtocolEncoderImpl;->findEncoder(Ljava/lang/Class;)Lorg/apache/mina/protocol/codec/MessageEncoder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/mina/protocol/codec/MessageEncoder;->encode(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Lorg/apache/mina/protocol/ProtocolViolationException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Unexpected message type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
