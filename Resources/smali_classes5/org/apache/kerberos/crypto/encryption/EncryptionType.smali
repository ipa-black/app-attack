.class public final Lorg/apache/kerberos/crypto/encryption/EncryptionType;
.super Ljava/lang/Object;
.source "EncryptionType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final DES3_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DES3_CBC_SHA1:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DES3_CBC_SHA1_KD:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DES_CBC_CRC:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DES_CBC_MD4:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DES_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DES_EDE3_CBC_ENV_OID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final DSAWITHSHA1_CMSOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final MD5WITHRSAENCRYPTION_CMSOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final NULL:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final PK_CROSS:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final RC2CBC_ENVOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final RC4_HMAC:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final RESERVED4:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final RESERVED6:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final RSAENCRYPTION_ENVOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final RSAES_OAEP_ENV_OID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final SHA1WITHRSAENCRYPTION_CMSOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 27
    new-instance v1, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "null"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->NULL:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 28
    new-instance v2, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "DES-CBC-CRC"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_CBC_CRC:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 29
    new-instance v3, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "DES-CBC-MD4"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_CBC_MD4:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 30
    new-instance v4, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "DES-CBC-MD5"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 31
    new-instance v5, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "RESERVED-4"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->RESERVED4:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 32
    new-instance v6, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "DES3-CBC-MD5"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES3_CBC_MD5:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 33
    new-instance v7, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "RESERVED-6"

    invoke-direct {v7, v8, v9}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->RESERVED6:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 34
    new-instance v8, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "DES3-CBC-SHA1"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES3_CBC_SHA1:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 35
    new-instance v9, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "DES3-CBC-SHA1-KD"

    invoke-direct {v9, v10, v11}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES3_CBC_SHA1_KD:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 36
    new-instance v10, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "DSA-with-SHA1-CMS-oid"

    invoke-direct {v10, v11, v12}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v10, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DSAWITHSHA1_CMSOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 37
    new-instance v11, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "MD5-with-RSA-encryption-CMS-oid"

    invoke-direct {v11, v12, v13}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v11, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->MD5WITHRSAENCRYPTION_CMSOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 38
    new-instance v12, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "SHA1-with-RSA-encryption-CMS-oid"

    invoke-direct {v12, v13, v14}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v12, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->SHA1WITHRSAENCRYPTION_CMSOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 39
    new-instance v13, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "RC2-CBC-environment-oid"

    invoke-direct {v13, v14, v15}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v13, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->RC2CBC_ENVOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 40
    new-instance v14, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v13, v14

    const/16 v15, 0xd

    move-object/from16 v18, v0

    const-string v0, "RSA-encryption-environment-oid"

    invoke-direct {v14, v15, v0}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v14, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->RSAENCRYPTION_ENVOID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 41
    new-instance v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v14, v0

    const/16 v15, 0xe

    move-object/from16 v19, v1

    const-string v1, "RSA-ES-OAEP-environment-oid"

    invoke-direct {v0, v15, v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->RSAES_OAEP_ENV_OID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 42
    new-instance v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object v15, v0

    const/16 v1, 0xf

    move-object/from16 v20, v2

    const-string v2, "DES-EDE3-CBC-environment-oid"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->DES_EDE3_CBC_ENV_OID:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 43
    new-instance v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "RC4-HMAC"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->RC4_HMAC:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 44
    new-instance v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "PK-cross"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->PK_CROSS:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    .line 80
    filled-new-array/range {v0 .. v17}, [Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->fValues:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fOrdinal:I

    .line 74
    iput-object p2, p0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 3

    const/4 v0, 0x0

    .line 55
    :goto_0
    sget-object v1, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->fValues:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 56
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->NULL:Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 51
    iget v0, p0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    iget p1, p1, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->_fName:Ljava/lang/String;

    return-object v0
.end method
