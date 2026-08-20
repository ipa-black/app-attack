.class public Lorg/apache/kerberos/io/decoder/EncKrbPrivPartDecoder;
.super Ljava/lang/Object;
.source "EncKrbPrivPartDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodePrivatePartSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/components/EncKrbPrivPart;
    .locals 4

    .line 50
    new-instance v0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 55
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 56
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 81
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/HostAddressDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->setRecipientAddress(Lorg/apache/kerberos/messages/value/HostAddress;)V

    goto :goto_0

    .line 76
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 77
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/HostAddressDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->setSenderAddress(Lorg/apache/kerberos/messages/value/HostAddress;)V

    goto :goto_0

    .line 72
    :cond_2
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 73
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->setSequenceNumber(Ljava/lang/Integer;)V

    goto :goto_0

    .line 68
    :cond_3
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 69
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->setMicroSecond(Ljava/lang/Integer;)V

    goto :goto_0

    .line 64
    :cond_4
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 65
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->setTimestamp(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 60
    :cond_5
    check-cast v1, Lorg/apache/asn1/der/DEROctetString;

    .line 61
    invoke-virtual {v1}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->setUserData([B)V

    goto :goto_0

    .line 85
    :cond_6
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->getEncKrbPrivPart()Lorg/apache/kerberos/messages/components/EncKrbPrivPart;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/components/EncKrbPrivPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 41
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 43
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/decoder/EncKrbPrivPartDecoder;->decodePrivatePartSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/components/EncKrbPrivPart;

    move-result-object p1

    return-object p1
.end method
