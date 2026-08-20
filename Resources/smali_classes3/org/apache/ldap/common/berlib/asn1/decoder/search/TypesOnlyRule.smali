.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "TypesOnlyRule.java"


# instance fields
.field private octetSet:Z

.field private final tag:Lorg/apache/asn1/ber/TagEnum;

.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-byte v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->value:B

    .line 42
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->octetSet:Z

    .line 44
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/SearchRequestImpl;

    .line 109
    iget-byte v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->value:B

    invoke-static {v1}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->berDecodeBoolean(B)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/message/SearchRequestImpl;->setTypesOnly(Z)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->next()V

    const/4 v0, 0x0

    .line 115
    iput-byte v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->value:B

    .line 116
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->octetSet:Z

    return-void
.end method

.method public length(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The target primitive for this rule only requires a single octet with a length of 1.  The length of the field however is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 58
    iget-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expecting "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " with an id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " but instead got a tag id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->octetSet:Z

    if-nez v0, :cond_1

    .line 94
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->value:B

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;->octetSet:Z

    goto :goto_0

    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The target primitive for this rule only requires a single octet with a length of 1.  That octet has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
