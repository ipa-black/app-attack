.class public interface abstract Lorg/apache/asn1/ber/MutableTupleNode;
.super Ljava/lang/Object;
.source "MutableTupleNode.java"

# interfaces
.implements Lorg/apache/asn1/ber/TupleNode;


# virtual methods
.method public abstract addValueChunk(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract insert(Lorg/apache/asn1/ber/MutableTupleNode;I)V
.end method

.method public abstract remove(I)V
.end method

.method public abstract remove(Lorg/apache/asn1/ber/MutableTupleNode;)V
.end method

.method public abstract removeFromParent()V
.end method

.method public abstract setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V
.end method

.method public abstract setTuple(Lorg/apache/asn1/ber/Tuple;)V
.end method

.method public abstract setTuple(Lorg/apache/asn1/ber/Tuple;Ljava/util/List;)V
.end method
