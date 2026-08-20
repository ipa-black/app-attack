.class public Lorg/apache/asn1/ber/digester/RulesBase;
.super Ljava/lang/Object;
.source "RulesBase.java"

# interfaces
.implements Lorg/apache/asn1/ber/digester/Rules;


# instance fields
.field private digester:Lorg/apache/asn1/ber/digester/BERDigester;

.field private rules:Ljava/util/ArrayList;

.field private tagTree:Lorg/apache/asn1/ber/digester/TagTree;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/asn1/ber/digester/TagTree;

    invoke-direct {v0}, Lorg/apache/asn1/ber/digester/TagTree;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->tagTree:Lorg/apache/asn1/ber/digester/TagTree;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->rules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add([ILorg/apache/asn1/ber/digester/Rule;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->tagTree:Lorg/apache/asn1/ber/digester/TagTree;

    invoke-virtual {v0, p1, p2}, Lorg/apache/asn1/ber/digester/TagTree;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 77
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/RulesBase;->rules:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 86
    new-instance v0, Lorg/apache/asn1/ber/digester/TagTree;

    invoke-direct {v0}, Lorg/apache/asn1/ber/digester/TagTree;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->tagTree:Lorg/apache/asn1/ber/digester/TagTree;

    .line 87
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getDigester()Lorg/apache/asn1/ber/digester/BERDigester;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    return-object v0
.end method

.method public match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->tagTree:Lorg/apache/asn1/ber/digester/TagTree;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public match([I)Ljava/util/List;
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->tagTree:Lorg/apache/asn1/ber/digester/TagTree;

    new-instance v1, Lorg/apache/commons/collections/primitives/IntStack;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections/primitives/IntStack;-><init>([I)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/TagTree;->match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public rules()Ljava/util/List;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RulesBase;->rules:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/RulesBase;->digester:Lorg/apache/asn1/ber/digester/BERDigester;

    return-void
.end method
