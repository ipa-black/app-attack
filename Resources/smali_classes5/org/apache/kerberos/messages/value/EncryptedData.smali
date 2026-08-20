.class public Lorg/apache/kerberos/messages/value/EncryptedData;
.super Ljava/lang/Object;
.source "EncryptedData.java"


# instance fields
.field private cipherText:[B

.field private encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private keyVersion:I


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;I[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptedData;->encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 30
    iput p2, p0, Lorg/apache/kerberos/messages/value/EncryptedData;->keyVersion:I

    .line 31
    iput-object p3, p0, Lorg/apache/kerberos/messages/value/EncryptedData;->cipherText:[B

    return-void
.end method


# virtual methods
.method public getCipherText()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptedData;->cipherText:[B

    return-object v0
.end method

.method public getEncryptionType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptedData;->encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getKeyVersion()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/apache/kerberos/messages/value/EncryptedData;->keyVersion:I

    return v0
.end method
