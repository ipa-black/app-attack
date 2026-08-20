.class public Lorg/apache/asn1/ber/DeterminateLengthVisitor;
.super Ljava/lang/Object;
.source "DeterminateLengthVisitor.java"

# interfaces
.implements Lorg/apache/asn1/ber/TupleNodeVisitor;


# instance fields
.field private monitor:Lorg/apache/asn1/ber/VisitorMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lorg/apache/asn1/ber/VisitorMonitor;->NOOP:Lorg/apache/asn1/ber/VisitorMonitor;

    iput-object v0, p0, Lorg/apache/asn1/ber/DeterminateLengthVisitor;->monitor:Lorg/apache/asn1/ber/VisitorMonitor;

    return-void
.end method


# virtual methods
.method public canVisit(Lorg/apache/asn1/ber/TupleNode;)Z
    .locals 0

    .line 88
    invoke-interface {p1}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result p1

    return p1
.end method

.method public getOrder(Lorg/apache/asn1/ber/TupleNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p2
.end method

.method public isPrefix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMonitor(Lorg/apache/asn1/ber/VisitorMonitor;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/apache/asn1/ber/DeterminateLengthVisitor;->monitor:Lorg/apache/asn1/ber/VisitorMonitor;

    return-void
.end method

.method public visit(Lorg/apache/asn1/ber/TupleNode;)V
    .locals 5

    .line 51
    invoke-interface {p1}, Lorg/apache/asn1/ber/TupleNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/TupleNode;

    .line 55
    invoke-interface {v2}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    check-cast v2, Lorg/apache/asn1/ber/MutableTupleNode;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/asn1/ber/MutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v3}, Lorg/apache/asn1/ber/Tuple;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {p1}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/Tuple;->setValueLength(I)V

    .line 76
    iget-object v0, p0, Lorg/apache/asn1/ber/DeterminateLengthVisitor;->monitor:Lorg/apache/asn1/ber/VisitorMonitor;

    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/ber/VisitorMonitor;->visited(Lorg/apache/asn1/ber/TupleNodeVisitor;Lorg/apache/asn1/ber/TupleNode;)V

    return-void
.end method
