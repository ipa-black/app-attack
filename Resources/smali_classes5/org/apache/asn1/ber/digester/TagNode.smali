.class public Lorg/apache/asn1/ber/digester/TagNode;
.super Ljava/lang/Object;
.source "TagNode.java"


# instance fields
.field private children:Ljava/util/HashMap;

.field private depth:I

.field private rules:Ljava/util/ArrayList;

.field private tag:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->children:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->rules:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/TagNode;->tag:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method addNode(Lorg/apache/asn1/ber/digester/TagNode;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->depth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/digester/TagNode;->setDepth(I)V

    return-void
.end method

.method addRule(Lorg/apache/asn1/ber/digester/Rule;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->children:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/digester/TagNode;

    return-object p1
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->depth:I

    return v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->rules:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTag()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->tag:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasChild(Ljava/lang/Integer;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->children:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isLeaf()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagNode;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method setDepth(I)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/apache/asn1/ber/digester/TagNode;->depth:I

    return-void
.end method
