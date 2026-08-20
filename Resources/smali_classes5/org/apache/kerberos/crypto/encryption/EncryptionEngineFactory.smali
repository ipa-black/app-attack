.class public Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;
.super Ljava/lang/Object;
.source "EncryptionEngineFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/exceptions/KerberosException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/EncryptionKey;->getKeyType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getOrdinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 45
    new-instance p0, Lorg/apache/kerberos/crypto/encryption/Des3CbcSha1Encryption;

    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/Des3CbcSha1Encryption;-><init>()V

    return-object p0

    .line 48
    :cond_0
    new-instance p0, Lorg/apache/kerberos/exceptions/KerberosException;

    sget-object v0, Lorg/apache/kerberos/exceptions/ErrorType;->KDC_ERR_ETYPE_NOSUPP:Lorg/apache/kerberos/exceptions/ErrorType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/exceptions/KerberosException;-><init>(Lorg/apache/kerberos/exceptions/ErrorType;)V

    throw p0

    .line 43
    :cond_1
    new-instance p0, Lorg/apache/kerberos/crypto/encryption/Des3CbcMd5Encryption;

    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/Des3CbcMd5Encryption;-><init>()V

    return-object p0

    .line 41
    :cond_2
    new-instance p0, Lorg/apache/kerberos/crypto/encryption/DesCbcMd5Encryption;

    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/DesCbcMd5Encryption;-><init>()V

    return-object p0

    .line 39
    :cond_3
    new-instance p0, Lorg/apache/kerberos/crypto/encryption/DesCbcMd4Encryption;

    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/DesCbcMd4Encryption;-><init>()V

    return-object p0

    .line 37
    :cond_4
    new-instance p0, Lorg/apache/kerberos/crypto/encryption/DesCbcCrcEncryption;

    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/DesCbcCrcEncryption;-><init>()V

    return-object p0

    .line 35
    :cond_5
    new-instance p0, Lorg/apache/kerberos/crypto/encryption/NullEncryption;

    invoke-direct {p0}, Lorg/apache/kerberos/crypto/encryption/NullEncryption;-><init>()V

    return-object p0
.end method
