.class public Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "PrimitiveIntDecodeRule.java"


# instance fields
.field private length:I

.field private pos:I

.field private final tag:Lorg/apache/asn1/ber/TagEnum;

.field private final value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->value:[B

    .line 71
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->INTEGER:Lorg/apache/asn1/ber/primitives/UniversalTag;

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/TagEnum;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->value:[B

    .line 81
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method


# virtual methods
.method equals(BI)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->value:[B

    aget-byte p2, v0, p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public finish()V
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->value:[B

    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->decodeInt([BII)I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pushInt(I)V

    .line 154
    :cond_0
    iput v2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->pos:I

    .line 155
    iput v2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->length:I

    return-void
.end method

.method public length(I)V
    .locals 3

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 118
    iput p1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->length:I

    return-void

    .line 113
    :cond_0
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
    .locals 1

    .line 96
    iget-object p2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expecting "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " with an id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->tag:Lorg/apache/asn1/ber/TagEnum;

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
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->pos:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->length:I

    if-gt v1, v2, :cond_1

    .line 134
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->value:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v0

    .line 135
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->pos:I

    goto :goto_0

    :cond_1
    return-void
.end method
