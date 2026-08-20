.class public Lorg/apache/kerberos/messages/value/EncryptedDataModifier;
.super Ljava/lang/Object;
.source "EncryptedDataModifier.java"


# instance fields
.field private cipherText:[B

.field private encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private keyVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedData()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 4

    .line 29
    new-instance v0, Lorg/apache/kerberos/messages/value/EncryptedData;

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    iget v2, p0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->keyVersion:I

    iget-object v3, p0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->cipherText:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/kerberos/messages/value/EncryptedData;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;I[B)V

    return-object v0
.end method

.method public setCipherText([B)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->cipherText:[B

    return-void
.end method

.method public setEncryptionType(Lorg/apache/kerberos/crypto/encryption/EncryptionType;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-void
.end method

.method public setKeyVersion(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->keyVersion:I

    return-void
.end method
