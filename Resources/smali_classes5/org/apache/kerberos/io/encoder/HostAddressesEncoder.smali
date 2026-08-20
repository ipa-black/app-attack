.class public Lorg/apache/kerberos/io/encoder/HostAddressesEncoder;
.super Ljava/lang/Object;
.source "HostAddressesEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/value/HostAddress;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 57
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 59
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/HostAddress;->getAddressType()Lorg/apache/kerberos/messages/value/HostAddressType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/HostAddressType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 60
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v2, Lorg/apache/asn1/der/DEROctetString;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/HostAddress;->getAddress()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/asn1/der/DEROctetString;-><init>([B)V

    const/4 p0, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    return-object v0
.end method

.method protected static encodeSequence(Lorg/apache/kerberos/messages/value/HostAddresses;)Lorg/apache/asn1/der/DERSequence;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/HostAddresses;->getAddresses()[Lorg/apache/kerberos/messages/value/HostAddress;

    move-result-object p0

    .line 39
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    const/4 v1, 0x0

    .line 41
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 43
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/HostAddressesEncoder;->encode(Lorg/apache/kerberos/messages/value/HostAddress;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
