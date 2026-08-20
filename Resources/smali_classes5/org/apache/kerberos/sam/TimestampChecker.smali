.class public Lorg/apache/kerberos/sam/TimestampChecker;
.super Ljava/lang/Object;
.source "TimestampChecker.java"

# interfaces
.implements Lorg/apache/kerberos/sam/KeyIntegrityChecker;


# static fields
.field private static final FIVE_MINUTES:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkKeyIntegrity([BLjavax/security/auth/kerberos/KerberosKey;)Z
    .locals 2

    .line 42
    invoke-virtual {p2}, Ljavax/security/auth/kerberos/KerberosKey;->getKeyType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/apache/kerberos/messages/value/EncryptionKey;

    invoke-virtual {p2}, Ljavax/security/auth/kerberos/KerberosKey;->getEncoded()[B

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lorg/apache/kerberos/messages/value/EncryptionKey;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[B)V

    const/4 p2, 0x0

    .line 49
    :try_start_0
    invoke-static {p1}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode([B)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1

    .line 52
    invoke-static {v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngineFactory;->getEncryptionEngineFor(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1, p1}, Lorg/apache/kerberos/crypto/encryption/EncryptionEngine;->getDecryptedData(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/EncryptedData;)[B

    move-result-object p1

    .line 56
    new-instance v0, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;->decode([B)Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;->getTimeStamp()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    .line 63
    invoke-virtual {p1, v0, v1}, Lorg/apache/kerberos/messages/value/KerberosTime;->isInClockSkew(J)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/kerberos/exceptions/KerberosException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method
