.class public Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "PrimitiveOctetStringRule.java"


# instance fields
.field private final accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

.field private isConstructed:Z

.field private final tag:Lorg/apache/asn1/ber/TagEnum;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    .line 45
    iput-boolean v1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    .line 61
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/TagEnum;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    .line 45
    iput-boolean v1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    .line 74
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 152
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    .line 161
    iput-boolean v2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    return-void
.end method

.method protected getAccumulator()Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    return-object v0
.end method

.method protected getTag()Lorg/apache/asn1/ber/TagEnum;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-object v0
.end method

.method protected isConstructed()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    return v0
.end method

.method public length(I)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    .line 123
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->ensureCapacity(I)V

    :cond_1
    return-void
.end method

.method protected setConstructed(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    xor-int/lit8 p2, p2, 0x1

    .line 91
    iput-boolean p2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    if-eqz p2, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    .line 100
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expecting "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " with an id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " but instead got a tag id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->isConstructed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->fill(Ljava/nio/ByteBuffer;)V

    :cond_2
    :goto_0
    return-void
.end method
