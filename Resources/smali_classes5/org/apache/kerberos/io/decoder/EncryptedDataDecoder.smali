.class public Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;
.super Ljava/lang/Object;
.source "EncryptedDataDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 4

    .line 54
    new-instance v0, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;-><init>()V

    .line 56
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 59
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 60
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DEROctetString;

    .line 74
    invoke-virtual {v1}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->setCipherText([B)V

    goto :goto_0

    .line 69
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 70
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->setKeyVersion(I)V

    goto :goto_0

    .line 65
    :cond_2
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 66
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->setEncryptionType(Lorg/apache/kerberos/crypto/encryption/EncryptionType;)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/EncryptedDataModifier;->getEncryptedData()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 40
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/apache/asn1/der/DERSequence;

    .line 42
    invoke-static {p0}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p0

    return-object p0
.end method
