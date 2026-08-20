.class public Lorg/apache/kerberos/io/decoder/PreAuthenticationDataDecoder;
.super Ljava/lang/Object;
.source "PreAuthenticationDataDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PreAuthenticationData;
    .locals 4

    .line 78
    new-instance v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;-><init>()V

    .line 80
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 83
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 84
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DEROctetString;

    .line 95
    invoke-virtual {v1}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->setDataValue([B)V

    goto :goto_0

    .line 89
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 90
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->setDataType(Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->getPreAuthenticationData()Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object p0

    return-object p0
.end method

.method protected static decodeSequence(Lorg/apache/asn1/der/DERSequence;)[Lorg/apache/kerberos/messages/value/PreAuthenticationData;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    .line 58
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERSequence;

    .line 61
    invoke-static {v2}, Lorg/apache/kerberos/io/decoder/PreAuthenticationDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v2

    .line 62
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/value/PreAuthenticationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 40
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 42
    invoke-static {p1}, Lorg/apache/kerberos/io/decoder/PreAuthenticationDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object p1

    return-object p1
.end method
