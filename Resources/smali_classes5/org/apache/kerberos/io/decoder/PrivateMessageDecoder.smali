.class public Lorg/apache/kerberos/io/decoder/PrivateMessageDecoder;
.super Ljava/lang/Object;
.source "PrivateMessageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodePrivateMessageSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/application/PrivateMessage;
    .locals 4

    .line 48
    new-instance v0, Lorg/apache/kerberos/messages/application/PrivateMessage;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/application/PrivateMessage;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 53
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 54
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 68
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->setEncryptedPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V

    goto :goto_0

    .line 63
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 64
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/kerberos/messages/MessageType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/MessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->setMessageType(Lorg/apache/kerberos/messages/MessageType;)V

    goto :goto_0

    .line 59
    :cond_2
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 60
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->setProtocolVersionNumber(I)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/application/PrivateMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 39
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 41
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/decoder/PrivateMessageDecoder;->decodePrivateMessageSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/application/PrivateMessage;

    move-result-object p1

    return-object p1
.end method
