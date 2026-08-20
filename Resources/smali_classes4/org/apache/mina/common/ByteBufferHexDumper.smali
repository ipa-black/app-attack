.class Lorg/apache/mina/common/ByteBufferHexDumper;
.super Ljava/lang/Object;
.source "ByteBufferHexDumper.java"


# static fields
.field private static final highDigits:[B

.field private static final lowDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    .line 38
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x100

    .line 42
    new-array v2, v1, [B

    .line 43
    new-array v3, v1, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    ushr-int/lit8 v5, v4, 0x4

    .line 47
    aget-byte v5, v0, v5

    aput-byte v5, v2, v4

    and-int/lit8 v5, v4, 0xf

    .line 48
    aget-byte v5, v0, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_0
    sput-object v2, Lorg/apache/mina/common/ByteBufferHexDumper;->highDigits:[B

    .line 52
    sput-object v3, Lorg/apache/mina/common/ByteBufferHexDumper;->lowDigits:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHexdump(Lorg/apache/mina/common/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .line 57
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string p0, "empty"

    return-object p0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer;->position()I

    move-result v2

    .line 69
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 70
    sget-object v4, Lorg/apache/mina/common/ByteBufferHexDumper;->highDigits:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    sget-object v4, Lorg/apache/mina/common/ByteBufferHexDumper;->lowDigits:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    const/16 v3, 0x20

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 79
    sget-object v4, Lorg/apache/mina/common/ByteBufferHexDumper;->highDigits:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    sget-object v4, Lorg/apache/mina/common/ByteBufferHexDumper;->lowDigits:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/mina/common/ByteBuffer;->position(I)Lorg/apache/mina/common/ByteBuffer;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
