.class public Ljdbm/helper/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToByteArray(B)[B
    .locals 2

    xor-int/lit8 p0, p0, -0x80

    int-to-byte p0, p0

    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static convertToByteArray(I)[B
    .locals 2

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 104
    invoke-static {v0, v1, p0}, Ljdbm/helper/Conversion;->pack4([BII)V

    return-object v0
.end method

.method public static convertToByteArray(J)[B
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    const/16 v0, 0x8

    .line 115
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 116
    invoke-static {v0, v1, p0, p1}, Ljdbm/helper/Conversion;->pack8([BIJ)V

    return-object v0
.end method

.method public static convertToByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 67
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 70
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Platform doesn\'t support UTF8 encoding"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToByteArray(S)[B
    .locals 2

    xor-int/lit16 p0, p0, -0x8000

    int-to-short p0, p0

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1, p0}, Ljdbm/helper/Conversion;->pack2([BII)V

    return-object v0
.end method

.method public static convertToInt([B)I
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, v0}, Ljdbm/helper/Conversion;->unpack4([BI)I

    move-result p0

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    return p0
.end method

.method public static convertToLong([B)J
    .locals 6

    const/4 v0, 0x0

    .line 153
    invoke-static {p0, v0}, Ljdbm/helper/Conversion;->unpack4([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-static {p0, v2}, Ljdbm/helper/Conversion;->unpack4([BI)I

    move-result p0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertToString([B)Ljava/lang/String;
    .locals 2

    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 132
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Platform doesn\'t support UTF8 encoding"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    const/4 p0, 0x5

    .line 203
    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object p0

    .line 204
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "int value of 5 is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 206
    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object p0

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "int value of -1 is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const p0, 0x1516318

    .line 209
    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object p0

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "int value of 22111000 is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x5

    .line 213
    invoke-static {v0, v1}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object p0

    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "long value of 5 is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 216
    invoke-static {v0, v1}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object p0

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "long value of -1 is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide v0, 0xf6f693ad88723bbL    # 2.469766514795014E-234

    .line 219
    invoke-static {v0, v1}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object p0

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "long value of 1112223334445556667 is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static final pack2([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 175
    aput-byte v1, p0, p1

    int-to-byte p1, p2

    .line 176
    aput-byte p1, p0, v0

    return-void
.end method

.method static final pack4([BII)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 182
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 183
    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 184
    aput-byte v0, p0, v1

    int-to-byte p2, p2

    .line 185
    aput-byte p2, p0, p1

    return-void
.end method

.method static final pack8([BIJ)V
    .locals 2

    const/16 p1, 0x20

    shr-long v0, p2, p1

    long-to-int p1, v0

    const/4 v0, 0x0

    .line 191
    invoke-static {p0, v0, p1}, Ljdbm/helper/Conversion;->pack4([BII)V

    const/4 p1, 0x4

    long-to-int p2, p2

    .line 192
    invoke-static {p0, p1, p2}, Ljdbm/helper/Conversion;->pack4([BII)V

    return-void
.end method

.method static unpack4([BI)I
    .locals 3

    .line 164
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
