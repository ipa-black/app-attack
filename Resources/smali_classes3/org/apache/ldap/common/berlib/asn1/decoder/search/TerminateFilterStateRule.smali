.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;
.source "TerminateFilterStateRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 36
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 44
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->getState()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->FILTER_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    if-ne p1, p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;->getRequest()Lorg/apache/ldap/common/message/SearchRequestImpl;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {p1, p2}, Lorg/apache/ldap/common/message/SearchRequestImpl;->setFilter(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 47
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->next()V

    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;->setEnabled(Z)V

    return-void
.end method
