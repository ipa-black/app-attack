.class public Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;
.super Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;
.source "Crc32Checksum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateKeyedChecksum([B[B)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public checksumSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->CRC32:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    return-object v0
.end method

.method public confounderSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 2

    .line 28
    new-instance v0, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$CRC32Digest;-><init>(Lorg/apache/kerberos/crypto/checksum/Crc32Checksum;Lorg/apache/kerberos/crypto/checksum/Crc32Checksum$1;)V

    return-object v0
.end method

.method public isSafe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyType()Lorg/apache/kerberos/crypto/encryption/CipherType;
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->NULL:Lorg/apache/kerberos/crypto/encryption/CipherType;

    return-object v0
.end method

.method public verifyKeyedChecksum([B[B[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
