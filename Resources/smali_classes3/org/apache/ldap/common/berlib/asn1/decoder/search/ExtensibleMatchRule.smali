.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "ExtensibleMatchRule.java"


# instance fields
.field private dnAttributes:Z

.field private isEnabled:Z

.field private matchingRule:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->matchingRule:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->type:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->dnAttributes:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 112
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 117
    new-instance v0, Lorg/apache/ldap/common/filter/ExtensibleNode;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->type:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->value:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->matchingRule:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->dnAttributes:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ldap/common/filter/ExtensibleNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->type:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->value:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->matchingRule:Ljava/lang/String;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->dnAttributes:Z

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->length(I)V

    :cond_0
    return-void
.end method

.method public setDnAttributes(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->dnAttributes:Z

    return-void
.end method

.method public setMatchingRule(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->matchingRule:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->value:Ljava/lang/String;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 58
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 70
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    return-void

    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
