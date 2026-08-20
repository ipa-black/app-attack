.class public abstract Lorg/apache/asn1/ber/TagEnum;
.super Lorg/apache/commons/lang/enum/ValuedEnum;
.source "TagEnum.java"


# instance fields
.field private final id:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/enum/ValuedEnum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lorg/apache/asn1/ber/TagEnum;->id:I

    return-void
.end method


# virtual methods
.method public final getConstructedTag()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TagEnum;->getValue()I

    move-result v0

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    return v0
.end method

.method public final getPrimitiveTag()I
    .locals 2

    .line 64
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TagEnum;->getValue()I

    move-result v0

    const v1, -0x20000001

    and-int/2addr v0, v1

    return v0
.end method

.method public final getTagId()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/apache/asn1/ber/TagEnum;->id:I

    return v0
.end method

.method public final getTypeClass()Lorg/apache/asn1/ber/TypeClass;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TagEnum;->getValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Lorg/apache/asn1/ber/TypeClass;->getTypeClass(I)Lorg/apache/asn1/ber/TypeClass;

    move-result-object v0

    return-object v0
.end method
