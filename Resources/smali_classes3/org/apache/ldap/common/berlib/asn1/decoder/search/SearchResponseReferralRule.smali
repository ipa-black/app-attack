.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "SearchResponseReferralRule.java"


# static fields
.field private static final TAG:Lorg/apache/asn1/ber/TagEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_REFERENCE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;->TAG:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 76
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 77
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 55
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;->TAG:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getRoot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;

    .line 65
    new-instance p2, Lorg/apache/ldap/common/message/ReferralImpl;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/message/ReferralImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    .line 66
    invoke-virtual {p1, p2}, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;->setReferral(Lorg/apache/ldap/common/message/Referral;)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Expecting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " with an id of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " but instead got a tag id of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
