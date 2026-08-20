.class public interface abstract Lorg/apache/asn1/codec/stateful/StatefulDecoder;
.super Ljava/lang/Object;
.source "StatefulDecoder.java"


# virtual methods
.method public abstract decode(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation
.end method

.method public abstract setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
.end method

.method public abstract setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
.end method
