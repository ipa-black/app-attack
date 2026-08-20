.class public Lorg/apache/kerberos/crypto/encryption/DesCbcMd5Encryption;
.super Lorg/apache/kerberos/crypto/encryption/DesCbcEncryption;
.source "DesCbcMd5Encryption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/DesCbcEncryption;-><init>()V

    return-void
.end method


# virtual methods
.method public checksumSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD5:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    return-object v0
.end method

.method public confounderSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public encryptionType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getChecksumEngine()Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;
    .locals 1

    .line 27
    new-instance v0, Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;

    invoke-direct {v0}, Lorg/apache/kerberos/crypto/checksum/RsaMd5Checksum;-><init>()V

    return-object v0
.end method

.method public minimumPadSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
