.class Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;
.super Ljava/lang/Object;
.source "Asn1CodecEncoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/EncoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncoderCallbackImpl"
.end annotation


# instance fields
.field private encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

.field private final synthetic this$0:Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;


# direct methods
.method private constructor <init>(Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->this$0:Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;-><init>(Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;)V

    return-void
.end method

.method static synthetic access$102(Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)Lorg/apache/mina/protocol/ProtocolEncoderOutput;
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    return-object p1
.end method


# virtual methods
.method public encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V
    .locals 2

    .line 58
    instance-of v0, p2, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 60
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 61
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    invoke-static {p2}, Lorg/apache/mina/common/ByteBuffer;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->write(Lorg/apache/mina/common/ByteBuffer;)V

    goto/16 :goto_4

    .line 63
    :cond_0
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 65
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 66
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 68
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->mergeAll()V

    goto :goto_4

    .line 73
    :cond_2
    instance-of v0, p2, Ljava/util/Iterator;

    if-eqz v0, :cond_4

    .line 75
    check-cast p2, Ljava/util/Iterator;

    .line 76
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_3
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->mergeAll()V

    goto :goto_4

    .line 83
    :cond_4
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 85
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 86
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    goto :goto_2

    .line 91
    :cond_5
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->mergeAll()V

    goto :goto_4

    .line 93
    :cond_6
    instance-of v0, p2, Ljava/util/Enumeration;

    if-eqz v0, :cond_8

    .line 95
    check-cast p2, Ljava/util/Enumeration;

    .line 96
    :goto_3
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    goto :goto_3

    .line 101
    :cond_7
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->encOut:Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->mergeAll()V

    :goto_4
    return-void

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Encoded result is not a ByteBuffer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
