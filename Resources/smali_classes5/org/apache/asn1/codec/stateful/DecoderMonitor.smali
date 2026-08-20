.class public interface abstract Lorg/apache/asn1/codec/stateful/DecoderMonitor;
.super Ljava/lang/Object;
.source "DecoderMonitor.java"


# virtual methods
.method public abstract callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Ljava/lang/Object;)V
.end method

.method public abstract callbackSet(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
.end method

.method public abstract error(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
.end method

.method public abstract fatalError(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
.end method

.method public abstract warning(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
.end method
