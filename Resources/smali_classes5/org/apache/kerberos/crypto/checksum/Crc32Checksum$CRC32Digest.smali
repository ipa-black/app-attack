.class Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;
.super Ljava/lang/Object;
.source "Crc32Checksum.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CRC32Digest"
.end annotation


# instance fields
.field private crc32:Ljava/util/zip/CRC32;

.field private final synthetic this$0:Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;


# direct methods
.method private constructor <init>(Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->this$0:Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;

    .line 73
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->crc32:Ljava/util/zip/CRC32;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;-><init>(Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;)V

    return-void
.end method

.method private int2octet(I)[B
    .locals 5

    const/4 v0, 0x4

    .line 109
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x18

    :goto_0
    if-ge v2, v0, :cond_0

    shr-int v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 113
    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 0

    .line 102
    iget-object p1, p0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->int2octet(I)[B

    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "CRC-32"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public reset()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
