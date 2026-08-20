.class public Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;
.super Ljava/lang/Object;
.source "EncryptionTypeInfoEntry.java"


# instance fields
.field private encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private salt:[B


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[B)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;->encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 32
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;->salt:[B

    return-void
.end method


# virtual methods
.method public getEncryptionType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;->encryptionType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptionTypeInfoEntry;->salt:[B

    return-object v0
.end method
