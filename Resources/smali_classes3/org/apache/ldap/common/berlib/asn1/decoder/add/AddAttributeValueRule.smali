.class public Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "AddAttributeValueRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    .line 57
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;->getAccumulator()Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/asn1/ber/digester/BERDigester;->peek(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/naming/directory/Attributes;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 81
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v4

    .line 85
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v2, v4}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 88
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;->setConstructed(Z)V

    return-void
.end method
