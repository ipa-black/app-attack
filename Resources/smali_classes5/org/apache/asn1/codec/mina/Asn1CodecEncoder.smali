.class public Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;
.super Ljava/lang/Object;
.source "Asn1CodecEncoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;
    }
.end annotation


# instance fields
.field private final callback:Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;

.field private final encoder:Lorg/apache/asn1/codec/stateful/StatefulEncoder;


# direct methods
.method public constructor <init>(Lorg/apache/asn1/codec/stateful/StatefulEncoder;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;-><init>(Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$1;)V

    iput-object v0, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;->callback:Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;

    .line 33
    invoke-interface {p1, v0}, Lorg/apache/asn1/codec/stateful/StatefulEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    .line 34
    iput-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;->encoder:Lorg/apache/asn1/codec/stateful/StatefulEncoder;

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;->callback:Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;

    invoke-static {p1, p3}, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;->access$102(Lorg/apache/asn1/codec/mina/Asn1CodecEncoder$EncoderCallbackImpl;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)Lorg/apache/mina/protocol/ProtocolEncoderOutput;

    .line 44
    :try_start_0
    iget-object p1, p0, Lorg/apache/asn1/codec/mina/Asn1CodecEncoder;->encoder:Lorg/apache/asn1/codec/stateful/StatefulEncoder;

    invoke-interface {p1, p2}, Lorg/apache/asn1/codec/stateful/StatefulEncoder;->encode(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/asn1/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Lorg/apache/mina/protocol/ProtocolViolationException;

    const-string p3, "Encoding failed."

    invoke-direct {p2, p3, p1}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
