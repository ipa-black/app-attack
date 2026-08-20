.class public Lorg/apache/kerberos/crypto/encryption/NullEncryption;
.super Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;
.source "NullEncryption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public blockSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public calculateChecksum([B)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public checksumSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->NULL:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    return-object v0
.end method

.method public confounderSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encryptionType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->NULL:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChecksumEngine()Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public keySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyType()Lorg/apache/kerberos/crypto/encryption/CipherType;
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->NULL:Lorg/apache/kerberos/crypto/encryption/CipherType;

    return-object v0
.end method

.method public minimumPadSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processBlockCipher(Z[B[B[B)[B
    .locals 0

    return-object p2
.end method
