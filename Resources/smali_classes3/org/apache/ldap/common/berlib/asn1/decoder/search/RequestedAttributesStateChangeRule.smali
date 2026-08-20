.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesStateChangeRule;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;
.source "RequestedAttributesStateChangeRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 34
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 42
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesStateChangeRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->getState()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesStateChangeRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->ATTRIBUTES_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesStateChangeRule;->setEnabled(Z)V

    :cond_0
    return-void
.end method
