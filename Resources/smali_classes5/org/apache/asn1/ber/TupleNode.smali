.class public interface abstract Lorg/apache/asn1/ber/TupleNode;
.super Ljava/lang/Object;
.source "TupleNode.java"


# virtual methods
.method public abstract accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V
.end method

.method public abstract encode(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getChildTupleNodeAt(I)Lorg/apache/asn1/ber/TupleNode;
.end method

.method public abstract getChildren()Ljava/util/Iterator;
.end method

.method public abstract getIndex(Lorg/apache/asn1/ber/TupleNode;)I
.end method

.method public abstract getParentTupleNode()Lorg/apache/asn1/ber/TupleNode;
.end method

.method public abstract getTuple()Lorg/apache/asn1/ber/Tuple;
.end method

.method public abstract getValueChunks()Ljava/util/List;
.end method

.method public abstract size()I
.end method
