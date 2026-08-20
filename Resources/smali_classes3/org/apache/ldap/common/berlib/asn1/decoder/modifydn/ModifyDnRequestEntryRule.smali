.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ModifyDnRequestEntryRule.java"


# instance fields
.field private byPass:Z

.field private req:Lorg/apache/ldap/common/message/ModifyDnRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 107
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 109
    iput-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 110
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    return-void

    .line 115
    :cond_0
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 118
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 130
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v3

    .line 133
    :goto_0
    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v4}, Lorg/apache/ldap/common/message/ModifyDnRequest;->setName(Ljava/lang/String;)V

    .line 134
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    .line 135
    iput-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/ModifyDnRequest;

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 54
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;->byPass:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    return-void
.end method
