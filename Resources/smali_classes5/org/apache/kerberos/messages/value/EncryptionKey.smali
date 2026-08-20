.class public Lorg/apache/kerberos/messages/value/EncryptionKey;
.super Ljava/lang/Object;
.source "EncryptionKey.java"


# instance fields
.field private _keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private _keyValue:[B

.field private _keyVersion:I


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 31
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[BI)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 36
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    .line 45
    iput p3, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyVersion:I

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 61
    :goto_0
    iget-object v2, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 62
    aput-byte v0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lorg/apache/kerberos/messages/value/EncryptionKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 54
    :cond_1
    check-cast p1, Lorg/apache/kerberos/messages/value/EncryptionKey;

    .line 55
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    iget-object v3, p1, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    iget-object p1, p1, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getKeyType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getKeyValue()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyValue:[B

    return-object v0
.end method

.method public getKeyVersion()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    invoke-virtual {v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/EncryptionKey;->_keyType:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    invoke-virtual {v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getOrdinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
