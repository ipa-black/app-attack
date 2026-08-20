.class public Lorg/apache/asn1/ber/digester/rules/PrimitiveEnumDecodeRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;
.source "PrimitiveEnumDecodeRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/TagEnum;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method
