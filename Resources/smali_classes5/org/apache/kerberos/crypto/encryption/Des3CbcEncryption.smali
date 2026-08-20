.class public abstract Lorg/apache/kerberos/crypto/encryption/Des3CbcEncryption;
.super Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;
.source "Des3CbcEncryption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public blockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 26
    new-instance v0, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    return-object v0
.end method

.method public keySize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public keyType()Lorg/apache/kerberos/crypto/encryption/CipherType;
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->DES3:Lorg/apache/kerberos/crypto/encryption/CipherType;

    return-object v0
.end method
