.class public Lorg/apache/kerberos/io/decoder/HostAddressDecoder;
.super Ljava/lang/Object;
.source "HostAddressDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 5

    .line 42
    sget-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->NULL:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 45
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERTaggedObject;

    .line 48
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v3

    .line 49
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    check-cast v2, Lorg/apache/asn1/der/DEROctetString;

    .line 59
    invoke-virtual {v2}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_1
    check-cast v2, Lorg/apache/asn1/der/DERInteger;

    .line 55
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/messages/value/HostAddressType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/HostAddressType;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Lorg/apache/kerberos/messages/value/HostAddress;

    invoke-direct {p0, v0, v1}, Lorg/apache/kerberos/messages/value/HostAddress;-><init>(Lorg/apache/kerberos/messages/value/HostAddressType;[B)V

    return-object p0
.end method

.method protected static decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddresses;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/messages/value/HostAddress;

    .line 78
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERSequence;

    .line 81
    invoke-static {v2}, Lorg/apache/kerberos/io/decoder/HostAddressDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddress;

    move-result-object v2

    .line 82
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p0, Lorg/apache/kerberos/messages/value/HostAddresses;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/HostAddresses;-><init>([Lorg/apache/kerberos/messages/value/HostAddress;)V

    return-object p0
.end method
