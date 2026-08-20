.class public Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;
.super Ljava/lang/Object;
.source "KdcReplyEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeKdcReplySequence(Lorg/apache/kerberos/messages/KdcReply;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 62
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 64
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getProtocolVersionNumber()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 66
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 68
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getPaData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getPaData()[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;->encodePreAuthData([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 73
    :cond_0
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getClientRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 75
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 77
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getTicket()Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/TicketEncoder;->encode(Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 79
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/kerberos/io/encoder/EncryptedDataEncoder;->encodeSequence(Lorg/apache/kerberos/messages/value/EncryptedData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    return-object v0
.end method

.method private encodePreAuthData([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)Lorg/apache/asn1/der/DERSequence;
    .locals 6

    .line 92
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 96
    new-instance v2, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v2}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 98
    new-instance v3, Lorg/apache/asn1/der/DERTaggedObject;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataType()Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->getOrdinal()I

    move-result v4

    invoke-static {v4}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v2, v3}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 99
    new-instance v3, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v4, Lorg/apache/asn1/der/DEROctetString;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataValue()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/asn1/der/DEROctetString;-><init>([B)V

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v2, v3}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 100
    invoke-virtual {v0, v2}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public encode(Lorg/apache/kerberos/messages/KdcReply;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v0, p2}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;->encodeKdcReplySequence(Lorg/apache/kerberos/messages/KdcReply;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p2

    .line 45
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result p1

    invoke-static {p1, p2}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    return-void
.end method
