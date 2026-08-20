.class public Lorg/apache/kerberos/io/decoder/ApplicationRequestDecoder;
.super Ljava/lang/Object;
.source "ApplicationRequestDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeApplicationRequestSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/ApplicationRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/kerberos/messages/ApplicationRequest;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/ApplicationRequest;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 65
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 66
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 87
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/ApplicationRequest;->setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V

    goto :goto_0

    .line 82
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 83
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/TicketDecoder;->decode(Lorg/apache/asn1/der/DERApplicationSpecific;)Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/ApplicationRequest;->setTicket(Lorg/apache/kerberos/messages/components/Ticket;)V

    goto :goto_0

    .line 78
    :cond_2
    check-cast v1, Lorg/apache/asn1/der/DERBitString;

    .line 79
    new-instance v2, Lorg/apache/kerberos/messages/value/ApOptions;

    invoke-virtual {v1}, Lorg/apache/asn1/der/DERBitString;->getOctets()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/kerberos/messages/value/ApOptions;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/ApplicationRequest;->setApOptions(Lorg/apache/kerberos/messages/value/ApOptions;)V

    goto :goto_0

    .line 74
    :cond_3
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 75
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/kerberos/messages/MessageType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/MessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/ApplicationRequest;->setMessageType(Lorg/apache/kerberos/messages/MessageType;)V

    goto :goto_0

    .line 70
    :cond_4
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 71
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/ApplicationRequest;->setProtocolVersionNumber(I)V

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/ApplicationRequest;
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
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/decoder/ApplicationRequestDecoder;->decodeApplicationRequestSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/ApplicationRequest;

    move-result-object p1

    return-object p1
.end method
