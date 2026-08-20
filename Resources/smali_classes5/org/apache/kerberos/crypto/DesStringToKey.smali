.class public Lorg/apache/kerberos/crypto/DesStringToKey;
.super Ljava/lang/Object;
.source "DesStringToKey.java"


# instance fields
.field private _desKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/DesStringToKey;->generateKey(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/kerberos/crypto/DesStringToKey;->_desKey:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/DesStringToKey;->generateKey(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/kerberos/crypto/DesStringToKey;->_desKey:[B

    return-void
.end method

.method private characterEncodeString(Ljava/lang/String;)[B
    .locals 2

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 144
    :try_start_0
    const-string v1, "8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private encryptSecretKey([B[B)[B
    .locals 8

    .line 114
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 115
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 118
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p2, 0x1

    .line 119
    invoke-virtual {v0, p2, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 121
    array-length v2, p1

    new-array v2, v2, [B

    const/16 v3, 0x8

    .line 122
    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    .line 124
    :goto_0
    array-length v7, p1

    div-int/2addr v7, v3

    if-ge v6, v7, :cond_0

    mul-int/lit8 v7, v6, 0x8

    .line 125
    invoke-virtual {v0, p1, v7, v2, v7}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 126
    invoke-static {v2, v7, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    new-instance v7, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v7, v1, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 128
    invoke-virtual {v0, p2, v7}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private fanFold([B)[B
    .locals 13

    const/16 v0, 0x8

    .line 65
    new-array v1, v0, [B

    .line 67
    array-length v2, p1

    div-int/2addr v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    .line 70
    new-array v5, v0, [B

    mul-int/lit8 v6, v4, 0x8

    .line 71
    invoke-static {p1, v6, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    rem-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 76
    new-array v6, v0, [B

    move v8, v3

    :goto_1
    if-ge v8, v0, :cond_2

    move v9, v3

    move v10, v9

    :goto_2
    const/4 v11, 0x4

    if-ge v9, v11, :cond_0

    rsub-int/lit8 v11, v9, 0x7

    shl-int v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    .line 82
    aget-byte v12, v5, v8

    and-int/2addr v11, v12

    mul-int/lit8 v12, v9, 0x2

    rsub-int/lit8 v12, v12, 0x7

    ushr-int/2addr v11, v12

    or-int/2addr v10, v11

    int-to-byte v10, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    :goto_3
    if-ge v11, v0, :cond_1

    rsub-int/lit8 v9, v11, 0x7

    shl-int v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 87
    aget-byte v12, v5, v8

    and-int/2addr v9, v12

    mul-int/lit8 v12, v11, 0x2

    add-int/lit8 v12, v12, -0x7

    shl-int/2addr v9, v12

    or-int/2addr v9, v10

    int-to-byte v10, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    rsub-int/lit8 v9, v8, 0x7

    .line 90
    aput-byte v10, v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_4
    if-ge v8, v0, :cond_3

    .line 95
    aget-byte v9, v6, v8

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v7

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 97
    :cond_3
    invoke-static {v6, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move v6, v3

    :goto_5
    if-ge v6, v0, :cond_5

    .line 101
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v7

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    move v6, v3

    :goto_6
    if-ge v6, v0, :cond_6

    .line 105
    aget-byte v7, v1, v6

    aget-byte v8, v5, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private generateKey(Ljava/lang/String;)[B
    .locals 3

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/DesStringToKey;->characterEncodeString(Ljava/lang/String;)[B

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/DesStringToKey;->padString([B)[B

    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/DesStringToKey;->fanFold([B)[B

    move-result-object v0

    .line 48
    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lorg/apache/kerberos/crypto/DesStringToKey;->getStrongKey([B)[B

    move-result-object v0

    .line 53
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/kerberos/crypto/DesStringToKey;->encryptSecretKey([B[B)[B

    move-result-object p1

    .line 55
    invoke-static {p1}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 57
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/DesStringToKey;->getStrongKey([B)[B

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getStrongKey([B)[B
    .locals 2

    const/4 v0, 0x7

    .line 136
    aget-byte v1, p1, v0

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method private padString([B)[B
    .locals 4

    .line 155
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 156
    array-length v0, p1

    goto :goto_0

    .line 158
    :cond_0
    array-length v0, p1

    rem-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sub-int/2addr v1, v0

    .line 163
    array-length v0, p1

    add-int/2addr v1, v0

    new-array v0, v1, [B

    add-int/lit8 v1, v1, -0x1

    .line 164
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 165
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 167
    :cond_2
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/kerberos/crypto/DesStringToKey;->_desKey:[B

    return-object v0
.end method
