.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ModifyRequestAttributeValueRule.java"


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
    .locals 5

    .line 57
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;->getAccumulator()Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/ModificationItem;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 78
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v3

    .line 82
    :goto_0
    invoke-virtual {v2}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;->setConstructed(Z)V

    return-void
.end method
