.class public final Lorg/apache/kerberos/crypto/checksum/ChecksumType;
.super Ljava/lang/Object;
.source "ChecksumType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CRC32:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final DES_MAC:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final DES_MAC_K:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final HMAC_SHA1_DES3:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final NULL:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final RSA_MD4:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final RSA_MD4_DES:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final RSA_MD4_DES_K:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final RSA_MD5:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final RSA_MD5_DES:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final RSA_MD5_DES3:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final SHA1:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final UNKNOWN11:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/crypto/checksum/ChecksumType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 29
    new-instance v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v1, 0x0

    const-string v2, "null"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->NULL:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 30
    new-instance v1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v2, 0x1

    const-string v3, "CRC32"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->CRC32:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 31
    new-instance v2, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v3, 0x2

    const-string v4, "RSA MD4"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD4:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 32
    new-instance v3, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v4, 0x3

    const-string v5, "RSA MD4 DES"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD4_DES:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 33
    new-instance v4, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v5, 0x4

    const-string v6, "DES MAC"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->DES_MAC:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 34
    new-instance v5, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v6, 0x5

    const-string v7, "DES MAC K"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->DES_MAC_K:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 35
    new-instance v6, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v7, 0x6

    const-string v8, "RSA MD4 DES K"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD4_DES_K:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 36
    new-instance v7, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/4 v8, 0x7

    const-string v9, "RSA MD5"

    invoke-direct {v7, v8, v9}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD5:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 37
    new-instance v8, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/16 v9, 0x8

    const-string v10, "RSA MD5 DES"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD5_DES:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 38
    new-instance v9, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/16 v10, 0x9

    const-string v11, "RSA MD5 DES3"

    invoke-direct {v9, v10, v11}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->RSA_MD5_DES3:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 39
    new-instance v10, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/16 v11, 0xa

    const-string v12, "SHA1"

    invoke-direct {v10, v11, v12}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v10, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->SHA1:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 40
    new-instance v11, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/16 v12, 0xb

    const-string v13, "UNKNOWN 11"

    invoke-direct {v11, v12, v13}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v11, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->UNKNOWN11:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 41
    new-instance v12, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    const/16 v13, 0xc

    const-string v14, "HMAC SHA1 DES3"

    invoke-direct {v12, v13, v14}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;-><init>(ILjava/lang/String;)V

    sput-object v12, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->HMAC_SHA1_DES3:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 82
    filled-new-array/range {v0 .. v12}, [Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->fValues:[Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fOrdinal:I

    .line 76
    iput-object p2, p0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/checksum/ChecksumType;
    .locals 3

    const/4 v0, 0x0

    .line 55
    :goto_0
    sget-object v1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->fValues:[Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 56
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->NULL:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    iget p1, p1, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->_fName:Ljava/lang/String;

    return-object v0
.end method
