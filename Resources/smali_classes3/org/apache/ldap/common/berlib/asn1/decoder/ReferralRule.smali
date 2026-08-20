.class public Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "ReferralRule.java"


# static fields
.field private static final TAG:Lorg/apache/asn1/ber/TagEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule$1;

    const/high16 v1, -0x7d000000

    const/4 v2, 0x3

    const-string v3, "Referral"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;->TAG:Lorg/apache/asn1/ber/TagEnum;

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

    .line 77
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 78
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 2

    .line 54
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 56
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;->TAG:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getRoot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/message/ResultResponse;

    .line 65
    invoke-interface {p1}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object p1

    .line 66
    new-instance p2, Lorg/apache/ldap/common/message/ReferralImpl;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/message/ReferralImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    .line 67
    invoke-interface {p1, p2}, Lorg/apache/ldap/common/message/LdapResult;->setReferral(Lorg/apache/ldap/common/message/Referral;)V

    .line 68
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 58
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
