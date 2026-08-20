.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "LessOrEqualRule.java"


# instance fields
.field private isEnabled:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->isEnabled:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 88
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->isEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->isEnabled:Z

    return-void

    .line 95
    :cond_0
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 98
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 110
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v1

    .line 113
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 115
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 119
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    .line 123
    new-instance v0, Lorg/apache/ldap/common/filter/SimpleNode;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ldap/common/filter/SimpleNode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->name:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    :goto_1
    return-void

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length(I)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    .line 50
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    .line 52
    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->getState()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    move-result-object p2

    iget-object p1, p1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->FILTER_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->isEnabled:Z

    :cond_0
    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
