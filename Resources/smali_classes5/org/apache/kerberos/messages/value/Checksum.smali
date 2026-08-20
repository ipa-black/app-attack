.class public Lorg/apache/kerberos/messages/value/Checksum;
.super Ljava/lang/Object;
.source "Checksum.java"


# instance fields
.field private checksum:[B

.field private checksumType:Lorg/apache/kerberos/crypto/checksum/ChecksumType;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/crypto/checksum/ChecksumType;[B)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/Checksum;->checksumType:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 34
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/Checksum;->checksum:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lorg/apache/kerberos/messages/value/Checksum;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    check-cast p1, Lorg/apache/kerberos/messages/value/Checksum;

    .line 52
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/Checksum;->checksumType:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    iget-object v3, p1, Lorg/apache/kerberos/messages/value/Checksum;->checksumType:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/Checksum;->checksum:[B

    iget-object p1, p1, Lorg/apache/kerberos/messages/value/Checksum;->checksum:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getChecksumType()Lorg/apache/kerberos/crypto/checksum/ChecksumType;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/Checksum;->checksumType:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    return-object v0
.end method

.method public getChecksumValue()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/Checksum;->checksum:[B

    return-object v0
.end method
