.class public Lorg/apache/ldap/common/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static s_alphabet:[C

.field private static s_codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 186
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/Base64;->s_alphabet:[C

    const/16 v0, 0x100

    .line 191
    new-array v1, v0, [B

    sput-object v1, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    sget-object v2, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 201
    sget-object v1, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 206
    sget-object v1, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    add-int/lit8 v2, v0, -0x47

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 211
    sget-object v1, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    add-int/lit8 v2, v0, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 214
    :cond_3
    sget-object v0, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    .line 215
    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 9

    .line 116
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 117
    :goto_0
    array-length v3, p0

    const/16 v4, 0xff

    if-ge v2, v3, :cond_2

    .line 119
    aget-char v3, p0, v2

    if-gt v3, v4, :cond_0

    sget-object v4, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    aget-byte v3, v4, v3

    if-gez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_2
    div-int/lit8 v2, v0, 0x4

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    .line 131
    rem-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    add-int/lit8 v2, v2, 0x2

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 141
    :cond_4
    new-array v0, v2, [B

    move v3, v1

    move v5, v3

    move v6, v5

    .line 150
    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_8

    .line 152
    aget-char v7, p0, v1

    if-le v7, v4, :cond_5

    const/4 v7, -0x1

    goto :goto_2

    :cond_5
    sget-object v8, Lorg/apache/ldap/common/util/Base64;->s_codes:[B

    aget-byte v7, v8, v7

    :goto_2
    if-ltz v7, :cond_7

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v8, v6, 0x6

    or-int/2addr v5, v7

    const/16 v7, 0x8

    if-lt v8, v7, :cond_6

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v3, 0x1

    shr-int v8, v5, v6

    and-int/2addr v8, v4

    int-to-byte v8, v8

    .line 163
    aput-byte v8, v0, v3

    move v3, v7

    goto :goto_3

    :cond_6
    move v6, v8

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    if-ne v3, v2, :cond_9

    return-object v0

    .line 178
    :cond_9
    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Miscalculated data length (wrote "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([B)[C
    .locals 10

    .line 52
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 58
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 64
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    .line 66
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    .line 68
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v2, 0x2

    .line 73
    array-length v8, p0

    if-ge v6, v8, :cond_1

    .line 75
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    add-int/lit8 v6, v3, 0x3

    .line 79
    sget-object v8, Lorg/apache/ldap/common/util/Base64;->s_alphabet:[C

    const/16 v9, 0x40

    if-eqz v7, :cond_2

    and-int/lit8 v7, v4, 0x3f

    goto :goto_3

    :cond_2
    move v7, v9

    :goto_3
    aget-char v7, v8, v7

    aput-char v7, v0, v6

    shr-int/lit8 v6, v4, 0x6

    add-int/lit8 v7, v3, 0x2

    if-eqz v5, :cond_3

    and-int/lit8 v9, v6, 0x3f

    .line 82
    :cond_3
    aget-char v5, v8, v9

    aput-char v5, v0, v7

    shr-int/lit8 v5, v4, 0xc

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v5, v5, 0x3f

    .line 85
    aget-char v5, v8, v5

    aput-char v5, v0, v6

    shr-int/lit8 v4, v4, 0x12

    and-int/lit8 v4, v4, 0x3f

    .line 87
    aget-char v4, v8, v4

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_4
    return-object v0
.end method
