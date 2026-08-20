.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "ModifyDnRequestNewRdnRule.java"


# instance fields
.field private byPass:Z

.field private req:Lorg/apache/ldap/common/message/ModifyDnRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 110
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 112
    iput-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 113
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    return-void

    .line 118
    :cond_0
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 121
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 133
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v3

    .line 136
    :goto_0
    iget-object v3, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v4}, Lorg/apache/ldap/common/message/ModifyDnRequest;->setNewRdn(Ljava/lang/String;)V

    .line 137
    iput-boolean v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    .line 138
    iput-object v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    return-void
.end method

.method public length(I)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->length(I)V

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/ModifyDnRequest;

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 57
    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getNewRdn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->req:Lorg/apache/ldap/common/message/ModifyDnRequest;

    invoke-interface {v0}, Lorg/apache/ldap/common/message/ModifyDnRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;->byPass:Z

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->value(Ljava/nio/ByteBuffer;)V

    return-void
.end method
