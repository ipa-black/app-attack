.class public abstract Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;
.super Ljava/lang/Object;
.source "ChecksumEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateChecksum([B)[B
    .locals 3

    .line 36
    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/checksum/ChecksumEngine;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 39
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 40
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 41
    invoke-interface {v0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p1
.end method

.method public abstract calculateKeyedChecksum([B[B)[B
.end method

.method public abstract checksumSize()I
.end method

.method public abstract checksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
.end method

.method public abstract confounderSize()I
.end method

.method public abstract getDigest()Lorg/bouncycastle/crypto/Digest;
.end method

.method public abstract isSafe()Z
.end method

.method public abstract keySize()I
.end method

.method public abstract keyType()Lorg/apache/kerberos/crypto/encryption/CipherType;
.end method

.method public abstract verifyKeyedChecksum([B[B[B)Z
.end method
