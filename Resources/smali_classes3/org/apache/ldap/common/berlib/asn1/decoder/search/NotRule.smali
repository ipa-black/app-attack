.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "NotRule.java"


# instance fields
.field private isEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 130
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(I)V

    .line 131
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;->addNode(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 56
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 68
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_9:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void

    .line 88
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
