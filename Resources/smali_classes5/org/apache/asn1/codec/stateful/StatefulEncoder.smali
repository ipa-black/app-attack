.class public interface abstract Lorg/apache/asn1/codec/stateful/StatefulEncoder;
.super Ljava/lang/Object;
.source "StatefulEncoder.java"


# virtual methods
.method public abstract encode(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/EncoderException;
        }
    .end annotation
.end method

.method public abstract setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
.end method

.method public abstract setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
.end method
