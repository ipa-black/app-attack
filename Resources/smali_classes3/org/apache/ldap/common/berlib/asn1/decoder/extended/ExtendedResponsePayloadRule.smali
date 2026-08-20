.class public Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponsePayloadRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ExtendedResponsePayloadRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_RESPONSE_VALUE_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 59
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 62
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponsePayloadRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponsePayloadRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/ExtendedResponse;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 76
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v2

    .line 79
    :goto_0
    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/ExtendedResponse;->setResponse([B)V

    return-void
.end method
