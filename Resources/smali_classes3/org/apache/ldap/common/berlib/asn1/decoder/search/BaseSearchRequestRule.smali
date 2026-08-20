.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "BaseSearchRequestRule.java"


# instance fields
.field private isEnabled:Z

.field private final minTagCount:I

.field private processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

.field private req:Lorg/apache/ldap/common/message/SearchRequestImpl;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    const-string v1, "minimum tag count must be 2 or more"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 78
    iput p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->minTagCount:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 204
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->next()V

    .line 207
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    :cond_0
    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->req:Lorg/apache/ldap/common/message/SearchRequestImpl;

    const/4 v1, 0x1

    .line 211
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    .line 212
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    return-void
.end method

.method protected getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    return-object v0
.end method

.method protected getRequest()Lorg/apache/ldap/common/message/SearchRequestImpl;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->req:Lorg/apache/ldap/common/message/SearchRequestImpl;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    return v0
.end method

.method public length(I)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->length(I)V

    :cond_0
    return-void
.end method

.method protected setEnabled(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTagCount()I

    move-result v0

    .line 144
    iget v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->minTagCount:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 146
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getTag(I)I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 158
    iput-boolean v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    return-void

    .line 162
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 169
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getCount()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    .line 170
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->peek(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/ldap/common/message/SearchRequestImpl;

    iput-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->req:Lorg/apache/ldap/common/message/SearchRequestImpl;

    .line 171
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/AbstractRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
