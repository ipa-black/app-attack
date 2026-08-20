.class Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;
.super Ljava/lang/Object;
.source "TupleTreeAnalyzer.java"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/asn1/ber/TupleTreeAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TupleTreeNodeAdapter"
.end annotation


# instance fields
.field node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

.field private final synthetic this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;


# direct methods
.method constructor <init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    return-void
.end method


# virtual methods
.method public children()Ljava/util/Enumeration;
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/IteratorUtils;->asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .locals 3

    .line 512
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;

    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    iget-object v2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v2, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildTupleNodeAt(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {v0, v1, p1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .locals 1

    .line 518
    check-cast p1, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->getTupleNode()Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    move-result-object p1

    .line 520
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getIndex(Lorg/apache/asn1/ber/TupleNode;)I

    move-result p1

    return p1
.end method

.method public getParent()Ljavax/swing/tree/TreeNode;
    .locals 3

    .line 506
    new-instance v0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;

    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->this$0:Lorg/apache/asn1/ber/TupleTreeAnalyzer;

    iget-object v2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getParentTupleNode()Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;-><init>(Lorg/apache/asn1/ber/TupleTreeAnalyzer;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    return-object v0
.end method

.method getTupleNode()Lorg/apache/asn1/ber/DefaultMutableTupleNode;
    .locals 1

    .line 525
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 530
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    .line 532
    iget-object v2, p0, Lorg/apache/asn1/ber/TupleTreeAnalyzer$TupleTreeNodeAdapter;->node:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/asn1/ber/Tuple;->getRawTag()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    invoke-static {v2}, Lorg/apache/asn1/ber/TypeClass;->getTypeClass(I)Lorg/apache/asn1/ber/TypeClass;

    move-result-object v2

    .line 534
    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->getRawTag()I

    move-result v3

    invoke-static {v3}, Lorg/apache/asn1/ber/Tag;->getTagId(I)I

    move-result v3

    .line 536
    invoke-virtual {v2}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "]["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->getLength()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
