.class public Lorg/apache/kerberos/io/decoder/ChecksumDecoder;
.super Ljava/lang/Object;
.source "ChecksumDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/Checksum;
    .locals 5

    .line 41
    sget-object v0, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->NULL:Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    .line 44
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERTaggedObject;

    .line 47
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v3

    .line 48
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    check-cast v2, Lorg/apache/asn1/der/DEROctetString;

    .line 58
    invoke-virtual {v2}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_1
    check-cast v2, Lorg/apache/asn1/der/DERInteger;

    .line 54
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/crypto/checksum/ChecksumType;->getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/checksum/ChecksumType;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    new-instance p0, Lorg/apache/kerberos/messages/value/Checksum;

    invoke-direct {p0, v0, v1}, Lorg/apache/kerberos/messages/value/Checksum;-><init>(Lorg/apache/kerberos/crypto/checksum/ChecksumType;[B)V

    return-object p0
.end method
