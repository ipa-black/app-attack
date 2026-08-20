.class public Lorg/apache/kerberos/io/encoder/EncryptionKeyEncoder;
.super Ljava/lang/Object;
.source "EncryptionKeyEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 31
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 33
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/EncryptionKey;->getKeyType()Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 34
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v2, Lorg/apache/asn1/der/DEROctetString;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/EncryptionKey;->getKeyValue()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/asn1/der/DEROctetString;-><init>([B)V

    const/4 p0, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    return-object v0
.end method
