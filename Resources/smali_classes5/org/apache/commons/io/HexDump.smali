.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _cbuffer:Ljava/lang/StringBuffer;

.field private static final _hexcodes:[C

.field private static final _lbuffer:Ljava/lang/StringBuffer;

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/io/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/io/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    const/16 v0, 0x10

    .line 106
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/io/HexDump;->_shifts:[I

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dump(B)Ljava/lang/StringBuffer;
    .locals 5

    .line 126
    sget-object v0, Lorg/apache/commons/io/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    .line 128
    sget-object v0, Lorg/apache/commons/io/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v3, Lorg/apache/commons/io/HexDump;->_shifts:[I

    add-int/lit8 v4, v1, 0x6

    aget v3, v3, v4

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    sget-object p0, Lorg/apache/commons/io/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method private static dump(J)Ljava/lang/StringBuffer;
    .locals 5

    .line 117
    sget-object v0, Lorg/apache/commons/io/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 119
    sget-object v0, Lorg/apache/commons/io/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v3, Lorg/apache/commons/io/HexDump;->_shifts:[I

    aget v3, v3, v1

    shr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    sget-object p0, Lorg/apache/commons/io/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p4, :cond_7

    .line 60
    array-length v0, p0

    if-ge p4, v0, :cond_7

    if-eqz p3, :cond_6

    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 71
    :goto_0
    array-length v1, p0

    if-ge p4, v1, :cond_5

    .line 72
    array-length v1, p0

    sub-int/2addr v1, p4

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    move v1, v2

    .line 77
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/io/HexDump;->dump(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    if-ge v5, v1, :cond_1

    add-int v6, v5, p4

    .line 80
    aget-byte v6, p0, v6

    invoke-static {v6}, Lorg/apache/commons/io/HexDump;->dump(B)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 82
    :cond_1
    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_4

    add-int v5, v2, p4

    .line 87
    aget-byte v5, p0, v5

    if-lt v5, v4, :cond_3

    const/16 v6, 0x7f

    if-ge v5, v6, :cond_3

    int-to-char v5, v5

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_3
    const/16 v5, 0x2e

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 93
    :cond_4
    sget-object v2, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 95
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    int-to-long v1, v1

    add-long/2addr p1, v1

    add-int/lit8 p4, p4, 0x10

    goto :goto_0

    :cond_5
    return-void

    .line 66
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot write to nullstream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "illegal index: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " into array of length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
