.class public Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ErrorMessageRule.java"


# instance fields
.field private byPass:Z

.field private result:Lorg/apache/ldap/common/message/LdapResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->byPass:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->byPass:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->getAccumulator()Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    invoke-interface {v0, v2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->setConstructed(Z)V

    .line 111
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->byPass:Z

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    :cond_1
    :goto_0
    return-void
.end method

.method public length(I)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->byPass:Z

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/ResultResponse;

    .line 55
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ResultResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    .line 57
    invoke-interface {v0}, Lorg/apache/ldap/common/message/LdapResult;->getMatchedDn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    invoke-interface {v0}, Lorg/apache/ldap/common/message/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->byPass:Z

    if-nez v0, :cond_2

    .line 62
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    :cond_2
    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;->byPass:Z

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
