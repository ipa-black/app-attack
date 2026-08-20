.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "EqualityMatchRule.java"


# instance fields
.field private isEnabled:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->name:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 115
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    return-void

    .line 123
    :cond_0
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 126
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 142
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v1

    .line 145
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 147
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 151
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    .line 155
    new-instance v0, Lorg/apache/ldap/common/filter/SimpleNode;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ldap/common/filter/SimpleNode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/SimpleNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 161
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->name:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    :goto_1
    return-void

    .line 169
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length(I)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 54
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 66
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    return-void

    .line 71
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    .line 77
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    .line 79
    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->getState()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    move-result-object p2

    iget-object p1, p1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->FILTER_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    if-eq p2, p1, :cond_2

    .line 81
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    :cond_2
    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
