.class public Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;
.super Ljava/lang/Object;
.source "AuthorizationDataDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decodeAuthorizationEntry(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;
    .locals 5

    .line 67
    sget-object v0, Lorg/apache/kerberos/messages/value/AuthorizationType;->NULL:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 70
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERTaggedObject;

    .line 73
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v3

    .line 74
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    check-cast v2, Lorg/apache/asn1/der/DEROctetString;

    .line 84
    invoke-virtual {v2}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_1
    check-cast v2, Lorg/apache/asn1/der/DERInteger;

    .line 80
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/messages/value/AuthorizationType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/AuthorizationType;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    new-instance p0, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;

    invoke-direct {p0, v0, v1}, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;-><init>(Lorg/apache/kerberos/messages/value/AuthorizationType;[B)V

    return-object p0
.end method

.method protected static decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/AuthorizationData;
    .locals 2

    .line 53
    new-instance v0, Lorg/apache/kerberos/messages/value/AuthorizationData;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/AuthorizationData;-><init>()V

    .line 55
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 58
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;->decodeAuthorizationEntry(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/AuthorizationData;->add(Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/value/AuthorizationData;
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
    invoke-static {p1}, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object p1

    return-object p1
.end method
