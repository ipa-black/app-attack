.class public Lorg/apache/kerberos/io/encoder/EncryptionTypeEncoder;
.super Ljava/lang/Object;
.source "EncryptionTypeEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode([Lorg/apache/kerberos/crypto/encryption/EncryptionType;)Lorg/apache/asn1/der/DERSequence;
    .locals 3

    .line 33
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    const/4 v1, 0x0

    .line 35
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 37
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
