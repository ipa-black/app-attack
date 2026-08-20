.class public Lorg/apache/asn1/ber/primitives/ContextSpecificTag;
.super Lorg/apache/asn1/ber/TagEnum;
.source "ContextSpecificTag.java"


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "constructed "

    goto :goto_0

    :cond_0
    const-string v1, "primitive "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->CONTEXT_SPECIFIC:Lorg/apache/asn1/ber/TypeClass;

    invoke-static {v1, p1, p2}, Lorg/apache/asn1/ber/Tag;->getIntEncodedTag(Lorg/apache/asn1/ber/TypeClass;IZ)I

    move-result p2

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/asn1/ber/TagEnum;-><init>(Ljava/lang/String;II)V

    return-void
.end method
