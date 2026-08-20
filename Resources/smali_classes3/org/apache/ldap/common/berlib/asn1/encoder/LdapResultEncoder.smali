.class public Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;
.super Ljava/lang/Object;
.source "LdapResultEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/message/LdapResult;)V
    .locals 2

    .line 48
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getResultCode()Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 51
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 52
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 54
    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getMatchedDn()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 56
    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getMatchedDn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 63
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 64
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 66
    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 70
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 71
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 76
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 77
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 80
    :goto_1
    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/message/Referral;->getLdapUrls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 84
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/LdapResult;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;->encode(Lorg/apache/ldap/common/message/Referral;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 86
    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 87
    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    :cond_2
    return-void
.end method
