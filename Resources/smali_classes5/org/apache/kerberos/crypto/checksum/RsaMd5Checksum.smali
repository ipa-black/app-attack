.class public Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;
.super Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;
.source "RsaMd5Checksum.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
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

    const/16 v0, 0x10

    return v0
.end method

.method public checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD5:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    return-object v0
.end method

.method public confounderSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 27
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

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

    .line 37
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->NULL:Lorg/apache/kerberos/crypto/encryption/CipherType;

    return-object v0
.end method

.method public verifyKeyedChecksum([B[B[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
