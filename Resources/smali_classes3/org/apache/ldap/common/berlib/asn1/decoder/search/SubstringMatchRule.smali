.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "SubstringMatchRule.java"


# instance fields
.field private any:Ljava/util/ArrayList;

.field private finalStr:Ljava/lang/String;

.field private initialStr:Ljava/lang/String;

.field private isEnabled:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->type:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->initialStr:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->finalStr:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->any:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAny(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->any:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 5

    .line 128
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 132
    new-instance v0, Lorg/apache/ldap/common/filter/SubstringNode;

    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->any:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->type:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->initialStr:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->finalStr:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ldap/common/filter/SubstringNode;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->type:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->finalStr:Ljava/lang/String;

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    .line 145
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->initialStr:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->any:Ljava/util/ArrayList;

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->length(I)V

    :cond_0
    return-void
.end method

.method public setFinalStr(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->finalStr:Ljava/lang/String;

    return-void
.end method

.method public setInitial(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->initialStr:Ljava/lang/String;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 65
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 77
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    return-void

    .line 81
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 88
    iget-boolean p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->type:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
