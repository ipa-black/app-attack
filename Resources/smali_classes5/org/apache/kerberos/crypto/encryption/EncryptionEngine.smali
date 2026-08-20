.class public abstract Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;
.super Ljava/lang/Object;
.source "EncryptionEngine.java"


# static fields
.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateChecksum([B)[B
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getChecksumEngine()Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;->calculateChecksum([B)[B

    move-result-object p1

    return-object p1
.end method

.method private concatenateBytes([B[B)[B
    .locals 4

    .line 118
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 120
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 121
    aget-byte v3, p1, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    array-length v2, p1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 124
    array-length v3, p1

    sub-int v3, v2, v3

    aget-byte v3, p2, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private decrypt([B[B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->processBlockCipher(Z[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private encrypt([B[B)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->processBlockCipher(Z[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private getRandomBytes(I)[B
    .locals 1

    .line 88
    new-array p1, p1, [B

    .line 91
    sget-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method private padString([B)[B
    .locals 4

    .line 99
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 100
    array-length v0, p1

    goto :goto_0

    .line 102
    :cond_0
    array-length v0, p1

    rem-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sub-int/2addr v1, v0

    .line 107
    array-length v0, p1

    add-int/2addr v1, v0

    new-array v0, v1, [B

    add-int/lit8 v1, v1, -0x1

    .line 108
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 109
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 111
    :cond_2
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private processBlockCipher(Z[B[B[B)[B
    .locals 4

    .line 151
    array-length v0, p2

    new-array v1, v0, [B

    .line 152
    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 153
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    if-eqz p4, :cond_0

    .line 156
    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {p3, v3, p4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 157
    invoke-virtual {v2, p1, p3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v2, p1, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    .line 166
    :try_start_0
    invoke-virtual {v2, p2, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p3

    goto :goto_1

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method private removeBytes([BII)[B
    .locals 2

    .line 138
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    new-array v0, v0, [B

    add-int/2addr p2, p3

    const/4 p3, 0x0

    .line 141
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 142
    aget-byte v1, p1, p2

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract blockSize()I
.end method

.method public abstract checksumSize()I
.end method

.method public abstract checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
.end method

.method public abstract confounderSize()I
.end method

.method public abstract encryptionType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;
.end method

.method public abstract getBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
.end method

.method public abstract getChecksumEngine()Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;
.end method

.method public getDecryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/EncryptedData;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Lorg/apache/kerberos/messages/value/EncryptedData;->getCipherText()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/value/EncryptionKey;->getKeyValue()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->decrypt([B[B)[B

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->confounderSize()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->checksumSize()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->removeBytes([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;[B)Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->confounderSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getRandomBytes(I)[B

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->checksumSize()I

    move-result v1

    new-array v1, v1, [B

    .line 60
    invoke-direct {p0, p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->padString([B)[B

    move-result-object p2

    .line 61
    invoke-direct {p0, v1, p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->concatenateBytes([B[B)[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->concatenateBytes([B[B)[B

    move-result-object p2

    .line 62
    invoke-direct {p0, p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->calculateChecksum([B)[B

    move-result-object v0

    .line 63
    invoke-direct {p0, p2}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->padString([B)[B

    move-result-object p2

    .line 66
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->confounderSize()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->confounderSize()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->checksumSize()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->confounderSize()I

    move-result v2

    sub-int v2, v1, v2

    aget-byte v2, v0, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/value/EncryptionKey;->getKeyValue()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->encrypt([B[B)[B

    move-result-object p2

    .line 73
    new-instance v0, Lorg/apache/kerberos/messages/value/EncryptedData;

    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->encryptionType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/value/EncryptionKey;->getKeyVersion()I

    move-result p1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/kerberos/messages/value/EncryptedData;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;I[B)V

    return-object v0
.end method

.method public abstract keySize()I
.end method

.method public abstract keyType()Lorg/apache/kerberos/crypto/encryption/CipherType;
.end method

.method public abstract minimumPadSize()I
.end method
