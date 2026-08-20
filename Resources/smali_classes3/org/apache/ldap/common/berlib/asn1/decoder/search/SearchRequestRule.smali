.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "SearchRequestRule.java"


# instance fields
.field private final processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 40
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 71
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 72
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->reset()V

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 49
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 51
    invoke-static {p1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getLdapTagById(I)Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    move-result-object p1

    .line 53
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    if-ne p2, p1, :cond_0

    .line 60
    new-instance p1, Lorg/apache/ldap/common/message/SearchRequestImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/message/SearchRequestImpl;-><init>(I)V

    .line 61
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;->processing:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expected a SEARCH_REQUEST tag id but got a "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
