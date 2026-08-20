.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;
.source "SizeLimitRule.java"


# instance fields
.field private length:I

.field private pos:I

.field private final value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 46
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;-><init>(I)V

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->value:[B

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    iput v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->pos:I

    .line 120
    iput v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->length:I

    .line 121
    invoke-super {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->finish()V

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->value:[B

    iget v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->length:I

    invoke-static {v0, v1, v2}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->decodeInt([BII)I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->getRequest()Lorg/apache/ldap/common/message/SearchRequestImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->setSizeLimit(I)V

    .line 130
    iput v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->pos:I

    .line 131
    iput v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->length:I

    .line 132
    invoke-super {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->finish()V

    return-void
.end method

.method public length(I)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 84
    iput p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->length:I

    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The target primitive for this rule can only hold integers of 32 bits or 4 bytes.  The length of the field however is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseSearchRequestRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 54
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getTopTag()I

    move-result p1

    sget-object p2, Lorg/apache/asn1/ber/primitives/UniversalTag;->INTEGER:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result p2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_0

    .line 57
    invoke-virtual {p0, p3}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->setEnabled(Z)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->getState()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->getProcessing()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->SIZE_LIMIT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    if-eq p1, p2, :cond_1

    .line 62
    invoke-virtual {p0, p3}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public value(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->pos:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->length:I

    if-gt v1, v2, :cond_2

    .line 105
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->value:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v0

    .line 106
    iget v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;->pos:I

    goto :goto_0

    :cond_2
    return-void
.end method
