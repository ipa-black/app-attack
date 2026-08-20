.class public Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveEnumDecodeRule;
.source "ResultCodeRule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveEnumDecodeRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 38
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveEnumDecodeRule;->finish()V

    .line 40
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result v0

    .line 41
    invoke-static {v0}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getResultCodeEnum(I)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/ResultResponse;

    .line 43
    invoke-interface {v1}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    return-void
.end method
