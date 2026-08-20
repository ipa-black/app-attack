.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ModificationItemRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;->getAccumulator()Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 78
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v2

    .line 82
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Expecting 0, 1, 2 int value for add, delete, or replace operation on entry attribute but got a "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v3, 0x3

    .line 102
    :cond_4
    :goto_1
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v4}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/ModifyRequest;

    .line 105
    new-instance v4, Ljavax/naming/directory/ModificationItem;

    invoke-direct {v4, v3, v2}, Ljavax/naming/directory/ModificationItem;-><init>(ILjavax/naming/directory/Attribute;)V

    .line 106
    invoke-interface {v0, v4}, Lorg/apache/ldap/common/message/ModifyRequest;->addModification(Ljavax/naming/directory/ModificationItem;)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;->setConstructed(Z)V

    return-void
.end method
