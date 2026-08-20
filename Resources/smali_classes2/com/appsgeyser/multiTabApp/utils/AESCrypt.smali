.class public Lcom/appsgeyser/multiTabApp/utils/AESCrypt;
.super Ljava/lang/Object;
.source "AESCrypt.java"


# static fields
.field public static final SEED_16_CHARACTER:Ljava/lang/String; = "hhyGEUIaySvDEPRd"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final key:Ljavax/crypto/spec/SecretKeySpec;

.field private spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 30
    const-string v1, "hhyGEUIaySvDEPRd"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x20

    .line 31
    new-array v2, v1, [B

    .line 32
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->cipher:Ljavax/crypto/Cipher;

    .line 35
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 36
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->getIV()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->key:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 61
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->key:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/AESCrypt;->cipher:Ljavax/crypto/Cipher;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getIV()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    const/16 v0, 0x10

    .line 41
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 43
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x4t
        0x1t
        0x4t
        0x4t
        0x7t
        0x9t
        0x8t
        0x1t
        0x3t
        0x2t
        0x2t
        0x3t
        0x0t
        0x0t
        0x4t
        0x3t
    .end array-data
.end method
