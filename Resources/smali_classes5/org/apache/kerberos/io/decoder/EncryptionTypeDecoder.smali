.class public Lorg/apache/kerberos/io/decoder/EncryptionTypeDecoder;
.super Ljava/lang/Object;
.source "EncryptionTypeDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lorg/apache/asn1/der/DERSequence;)[Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 3

    .line 35
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 38
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERInteger;

    .line 41
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
