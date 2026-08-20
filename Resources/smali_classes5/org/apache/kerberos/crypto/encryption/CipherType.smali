.class public final Lorg/apache/kerberos/crypto/encryption/CipherType;
.super Ljava/lang/Object;
.source "CipherType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final AES128:Lorg/apache/kerberos/crypto/encryption/CipherType;

.field public static final DES:Lorg/apache/kerberos/crypto/encryption/CipherType;

.field public static final DES3:Lorg/apache/kerberos/crypto/encryption/CipherType;

.field public static final NULL:Lorg/apache/kerberos/crypto/encryption/CipherType;

.field public static final VALUES:Ljava/util/List;

.field private static fNextOrdinal:I

.field private static final fValues:[Lorg/apache/kerberos/crypto/encryption/CipherType;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lorg/apache/kerberos/crypto/encryption/CipherType;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lorg/apache/kerberos/crypto/encryption/CipherType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->NULL:Lorg/apache/kerberos/crypto/encryption/CipherType;

    .line 28
    new-instance v1, Lorg/apache/kerberos/crypto/encryption/CipherType;

    const-string v2, "DES"

    invoke-direct {v1, v2}, Lorg/apache/kerberos/crypto/encryption/CipherType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/crypto/encryption/CipherType;->DES:Lorg/apache/kerberos/crypto/encryption/CipherType;

    .line 29
    new-instance v2, Lorg/apache/kerberos/crypto/encryption/CipherType;

    const-string v3, "DES3"

    invoke-direct {v2, v3}, Lorg/apache/kerberos/crypto/encryption/CipherType;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/crypto/encryption/CipherType;->DES3:Lorg/apache/kerberos/crypto/encryption/CipherType;

    .line 30
    new-instance v3, Lorg/apache/kerberos/crypto/encryption/CipherType;

    const-string v4, "AES128"

    invoke-direct {v3, v4}, Lorg/apache/kerberos/crypto/encryption/CipherType;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/crypto/encryption/CipherType;->AES128:Lorg/apache/kerberos/crypto/encryption/CipherType;

    const/4 v4, 0x0

    .line 49
    sput v4, Lorg/apache/kerberos/crypto/encryption/CipherType;->fNextOrdinal:I

    .line 62
    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/kerberos/crypto/encryption/CipherType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->fValues:[Lorg/apache/kerberos/crypto/encryption/CipherType;

    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Lorg/apache/kerberos/crypto/encryption/CipherType;->fNextOrdinal:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/kerberos/crypto/encryption/CipherType;->fNextOrdinal:I

    iput v0, p0, Lorg/apache/kerberos/crypto/encryption/CipherType;->fOrdinal:I

    .line 56
    iput-object p1, p0, Lorg/apache/kerberos/crypto/encryption/CipherType;->fName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 37
    iget v0, p0, Lorg/apache/kerberos/crypto/encryption/CipherType;->fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/crypto/encryption/CipherType;

    iget p1, p1, Lorg/apache/kerberos/crypto/encryption/CipherType;->fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/CipherType;
    .locals 3

    const/4 v0, 0x0

    .line 41
    :goto_0
    sget-object v1, Lorg/apache/kerberos/crypto/encryption/CipherType;->fValues:[Lorg/apache/kerberos/crypto/encryption/CipherType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 42
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/crypto/encryption/CipherType;->fOrdinal:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    sget-object p1, Lorg/apache/kerberos/crypto/encryption/CipherType;->NULL:Lorg/apache/kerberos/crypto/encryption/CipherType;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/kerberos/crypto/encryption/CipherType;->fName:Ljava/lang/String;

    return-object v0
.end method
