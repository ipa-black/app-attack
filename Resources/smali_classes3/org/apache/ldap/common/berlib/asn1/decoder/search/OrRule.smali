.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "OrRule.java"


# instance fields
.field private isEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    if-eqz v0, :cond_2

    .line 135
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 139
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(I)V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/ldap/common/filter/ExprNode;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;->addNodeToHead(Lorg/apache/ldap/common/filter/ExprNode;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Expected to see an OrRule object on stack but got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 59
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 71
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_9:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    .line 100
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void

    .line 87
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
