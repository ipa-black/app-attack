.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "AndRule.java"


# instance fields
.field private isEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    if-eqz v0, :cond_2

    .line 133
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 137
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(I)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/ldap/common/filter/ExprNode;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;->addNodeToHead(Lorg/apache/ldap/common/filter/ExprNode;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Expected to see an AndRule object on stack but got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

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

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 58
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 70
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 85
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    return-void

    .line 96
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    .line 98
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
