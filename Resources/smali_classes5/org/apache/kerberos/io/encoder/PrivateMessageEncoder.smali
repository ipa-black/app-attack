.class public Lorg/apache/kerberos/io/encoder/PrivateMessageEncoder;
.super Ljava/lang/Object;
.source "PrivateMessageEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodePrivateMessageSequence(Lorg/apache/kerberos/messages/application/PrivateMessage;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 47
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 49
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->getProtocolVersionNumber()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 50
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 51
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->getEncryptedPart()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/kerberos/io/encoder/EncryptedDataEncoder;->encodeSequence(Lorg/apache/kerberos/messages/value/EncryptedData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    return-object v0
.end method


# virtual methods
.method public encode(Lorg/apache/kerberos/messages/application/PrivateMessage;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    new-instance v1, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/encoder/PrivateMessageEncoder;->encodePrivateMessageSequence(Lorg/apache/kerberos/messages/application/PrivateMessage;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/application/PrivateMessage;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result p1

    invoke-static {p1, v2}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
