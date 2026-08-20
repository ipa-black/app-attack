.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "PresentRule.java"


# instance fields
.field private isEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_7:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 111
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 117
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 129
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v1

    .line 132
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    new-instance v2, Lorg/apache/ldap/common/filter/PresenceNode;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/filter/PresenceNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 52
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 64
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    return-void

    .line 68
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
