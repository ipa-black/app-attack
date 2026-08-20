.class public Lorg/apache/asn1/ber/primitives/PrimitiveUtils;
.super Ljava/lang/Object;
.source "PrimitiveUtils.java"


# static fields
.field private static final FALSE_ARRAY:[B

.field private static final FOUR_BYTE_MAX:I = 0x7fffffff

.field private static final FOUR_BYTE_MIN:I = -0x80000000

.field private static final ONE_BYTE_MAX:I = 0x7f

.field private static final ONE_BYTE_MIN:I = -0x80

.field private static final THREE_BYTE_MAX:I = 0x7fffff

.field private static final THREE_BYTE_MIN:I = -0x800000

.field private static final TRUE_ARRAY:[B

.field private static final TWO_BYTE_MAX:I = 0x7fff

.field private static final TWO_BYTE_MIN:I = -0x8000


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 36
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->TRUE_ARRAY:[B

    .line 37
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->FALSE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static berDecodeBoolean(B)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static decodeInt([BII)I
    .locals 5

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x80

    if-eq p2, v0, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    const v0, 0xff00

    const/high16 v3, -0x1000000

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 197
    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x18

    and-int/2addr p2, v3

    add-int/lit8 v1, p1, 0x1

    .line 198
    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr p2, v1

    add-int/lit8 v1, p1, 0x2

    .line 199
    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    add-int/2addr p1, v4

    .line 200
    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    goto :goto_3

    .line 203
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length should be in range [0-4]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_2
    aget-byte p2, p0, p1

    and-int/lit16 v4, p2, 0x80

    if-ne v4, v1, :cond_3

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v3

    goto :goto_1

    :cond_3
    shl-int/lit8 p2, p2, 0x10

    :goto_1
    add-int/lit8 v1, p1, 0x1

    .line 193
    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    add-int/2addr p1, v2

    .line 194
    aget-byte p0, p0, p1

    goto :goto_0

    .line 172
    :cond_4
    aget-byte p2, p0, p1

    and-int/lit16 v2, p2, 0x80

    if-ne v2, v1, :cond_5

    shl-int/lit8 p2, p2, 0x8

    const/high16 v1, -0x10000

    or-int/2addr p2, v1

    goto :goto_2

    :cond_5
    shl-int/lit8 p2, p2, 0x8

    :goto_2
    add-int/2addr p1, v0

    .line 181
    aget-byte p0, p0, p1

    goto :goto_0

    .line 161
    :cond_6
    aget-byte p0, p0, p1

    and-int/lit16 p1, p0, 0x80

    if-ne p1, v1, :cond_7

    or-int/lit16 p0, p0, -0x100

    goto :goto_3

    :cond_7
    and-int/lit16 p0, p0, 0xff

    :goto_3
    return p0
.end method

.method public static derCerDecodeBoolean(B)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "For DER and CER encodings of boolean values the only  permisable values are 0x00 for false and 0xFF for true. A value of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, " is not allowed!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeBoolean(Z)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 78
    sget-object p0, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->TRUE_ARRAY:[B

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->FALSE_ARRAY:[B

    :goto_0
    return-object p0
.end method

.method public static encodeBooleanAsByte(Z)B
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static encodeInt(I)[B
    .locals 6

    const/16 v0, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 108
    new-array v0, v2, [B

    int-to-byte p0, p0

    .line 109
    aput-byte p0, v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, -0x8000

    const/4 v3, 0x2

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    .line 113
    new-array v0, v3, [B

    int-to-byte v3, p0

    .line 114
    aput-byte v3, v0, v2

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 115
    aput-byte p0, v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v4, 0x3

    if-lt p0, v0, :cond_2

    const v0, 0x7fffff

    if-gt p0, v0, :cond_2

    .line 119
    new-array v0, v4, [B

    int-to-byte v4, p0

    .line 120
    aput-byte v4, v0, v3

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    .line 121
    aput-byte v3, v0, v2

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 122
    aput-byte p0, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, -0x80000000

    if-lt p0, v0, :cond_3

    const v0, 0x7fffffff

    if-gt p0, v0, :cond_3

    const/4 v0, 0x4

    .line 126
    new-array v0, v0, [B

    int-to-byte v5, p0

    .line 127
    aput-byte v5, v0, v4

    shr-int/lit8 v4, p0, 0x8

    int-to-byte v4, v4

    .line 128
    aput-byte v4, v0, v3

    shr-int/lit8 v3, p0, 0x10

    int-to-byte v3, v3

    .line 129
    aput-byte v3, v0, v2

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 130
    aput-byte p0, v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
