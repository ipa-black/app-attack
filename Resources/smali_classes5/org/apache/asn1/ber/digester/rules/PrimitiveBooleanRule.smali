.class public Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "PrimitiveBooleanRule.java"


# instance fields
.field private octetSet:Z

.field private final tag:Lorg/apache/asn1/ber/TagEnum;

.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-byte v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->value:B

    .line 54
    iput-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->octetSet:Z

    .line 70
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/TagEnum;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-byte v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->value:B

    .line 54
    iput-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->octetSet:Z

    .line 80
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->value:B

    invoke-static {v1}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->berDecodeBoolean(B)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pushBoolean(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-byte v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->value:B

    .line 152
    iput-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->octetSet:Z

    return-void
.end method

.method public length(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 112
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

    .line 95
    iget-object p2, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expecting "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->tag:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " with an id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->tag:Lorg/apache/asn1/ber/TagEnum;

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

    .line 124
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->octetSet:Z

    if-nez v0, :cond_1

    .line 131
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->value:B

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->octetSet:Z

    goto :goto_0

    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The target primitive for this rule only requires a single octet with a length of 1.  That octet has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
