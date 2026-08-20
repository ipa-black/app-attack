.class public Lorg/apache/kerberos/crypto/RandomKey;
.super Ljava/lang/Object;
.source "RandomKey.java"


# static fields
.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/apache/kerberos/crypto/RandomKey;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRandomBytes(I)[B
    .locals 1

    .line 51
    new-array p0, p0, [B

    .line 54
    sget-object v0, Lorg/apache/kerberos/crypto/RandomKey;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static getRandomKeyFor(Ljavax/security/auth/kerberos/KerberosPrincipal;)Ljavax/security/auth/kerberos/KerberosKey;
    .locals 4

    const/16 v0, 0x8

    .line 43
    invoke-static {v0}, Lorg/apache/kerberos/crypto/RandomKey;->getRandomBytes(I)[B

    move-result-object v0

    .line 44
    new-instance v1, Lorg/apache/kerberos/crypto/DesStringToKey;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/kerberos/crypto/DesStringToKey;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljavax/security/auth/kerberos/KerberosKey;

    invoke-virtual {v1}, Lorg/apache/kerberos/crypto/DesStringToKey;->getKey()[B

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljavax/security/auth/kerberos/KerberosKey;-><init>(Ljavax/security/auth/kerberos/KerberosPrincipal;[BII)V

    return-object v0
.end method


# virtual methods
.method public getNewSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 3

    const/16 v0, 0x8

    .line 32
    invoke-static {v0}, Lorg/apache/kerberos/crypto/RandomKey;->getRandomBytes(I)[B

    move-result-object v0

    .line 33
    new-instance v1, Lorg/apache/kerberos/crypto/DesStringToKey;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/kerberos/crypto/DesStringToKey;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/apache/kerberos/messages/value/EncryptionKey;

    sget-object v2, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    invoke-virtual {v1}, Lorg/apache/kerberos/crypto/DesStringToKey;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/kerberos/messages/value/EncryptionKey;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[B)V

    return-object v0
.end method
