.class public interface abstract Lorg/apache/asn1/ber/BEREncoderCallback;
.super Ljava/lang/Object;
.source "BEREncoderCallback.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/EncoderCallback;


# virtual methods
.method public abstract lengthEncoded(Lorg/apache/asn1/ber/Tuple;)V
.end method

.method public abstract partialValueEncoded(Lorg/apache/asn1/ber/Tuple;)V
.end method

.method public abstract tagEncoded(Lorg/apache/asn1/ber/Tuple;)V
.end method
