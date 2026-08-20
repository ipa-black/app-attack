.class public Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareAVARule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "CompareAVARule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 51
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 54
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareAVARule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareAVARule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/CompareRequest;

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 68
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v2

    .line 71
    :goto_0
    invoke-interface {v1}, Lorg/apache/ldap/common/message/CompareRequest;->getAttributeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/CompareRequest;->setAttributeId(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/CompareRequest;->setAssertionValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
