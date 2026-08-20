.class public interface abstract Lorg/apache/asn1/ber/BERDecoderCallback;
.super Ljava/lang/Object;
.source "BERDecoderCallback.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# virtual methods
.method public abstract lengthDecoded(Lorg/apache/asn1/ber/Tuple;)V
.end method

.method public abstract partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V
.end method

.method public abstract tagDecoded(Lorg/apache/asn1/ber/Tuple;)V
.end method
