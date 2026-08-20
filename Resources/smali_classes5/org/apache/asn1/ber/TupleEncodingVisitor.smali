.class public Lorg/apache/asn1/ber/TupleEncodingVisitor;
.super Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;
.source "TupleEncodingVisitor.java"

# interfaces
.implements Lorg/apache/asn1/ber/TupleNodeVisitor;


# static fields
.field private static final EMPTY_ARRAY:[Ljava/nio/ByteBuffer;


# instance fields
.field private buffers:Ljava/util/ArrayList;

.field private visitorMonitor:Lorg/apache/asn1/ber/VisitorMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    sput-object v0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->EMPTY_ARRAY:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->buffers:Ljava/util/ArrayList;

    .line 48
    sget-object v0, Lorg/apache/asn1/ber/VisitorMonitor;->NOOP:Lorg/apache/asn1/ber/VisitorMonitor;

    iput-object v0, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->visitorMonitor:Lorg/apache/asn1/ber/VisitorMonitor;

    return-void
.end method


# virtual methods
.method public canVisit(Lorg/apache/asn1/ber/TupleNode;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public encode(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/EncoderException;
        }
    .end annotation

    .line 58
    instance-of v0, p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {p1, p0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Expected an argument of type DefaultMutableTupleNode but instead got an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->buffers:Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/asn1/ber/TupleEncodingVisitor;->EMPTY_ARRAY:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 169
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->buffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 170
    invoke-super {p0, v0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->encodeOccurred(Ljava/lang/Object;)V

    return-void
.end method

.method public getOrder(Lorg/apache/asn1/ber/TupleNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p2
.end method

.method public isPrefix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMonitor(Lorg/apache/asn1/ber/VisitorMonitor;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->visitorMonitor:Lorg/apache/asn1/ber/VisitorMonitor;

    return-void
.end method

.method public visit(Lorg/apache/asn1/ber/TupleNode;)V
    .locals 3

    .line 84
    invoke-interface {p1}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/asn1/ber/Tuple;->setTag(Ljava/nio/ByteBuffer;I)V

    .line 89
    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(Ljava/nio/ByteBuffer;I)V

    .line 90
    iget-object v2, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->buffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->buffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleEncodingVisitor;->visitorMonitor:Lorg/apache/asn1/ber/VisitorMonitor;

    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/ber/VisitorMonitor;->visited(Lorg/apache/asn1/ber/TupleNodeVisitor;Lorg/apache/asn1/ber/TupleNode;)V

    return-void
.end method
