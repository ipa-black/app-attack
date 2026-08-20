.class public Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ResultMatchedDNRule.java"


# instance fields
.field private byPass:Z

.field private result:Lorg/apache/ldap/common/message/LdapResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->byPass:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->byPass:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->getAccumulator()Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    invoke-interface {v0, v2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->setConstructed(Z)V

    .line 104
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->byPass:Z

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    :cond_1
    :goto_0
    return-void
.end method

.method public length(I)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->byPass:Z

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/ResultResponse;

    .line 49
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    .line 51
    invoke-interface {v0}, Lorg/apache/ldap/common/message/LdapResult;->getMatchedDn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->byPass:Z

    if-nez v0, :cond_1

    .line 55
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    :cond_1
    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;->byPass:Z

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
