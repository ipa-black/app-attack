.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchAnyRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "SubstringMatchAnyRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 48
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 51
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchAnyRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 63
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v1

    .line 66
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchAnyRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;

    .line 67
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;->addAny(Ljava/lang/String;)V

    return-void
.end method
