.class public Lorg/apache/kerberos/io/encoder/KdcReqBodyEncoder;
.super Ljava/lang/Object;
.source "KdcReqBodyEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeInitialSequence(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 68
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 70
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v2, Lorg/apache/asn1/der/DERBitString;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getKdcOptions()Lorg/apache/kerberos/messages/value/KdcOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/kerberos/messages/value/KdcOptions;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/asn1/der/DERBitString;-><init>([B)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 73
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 78
    :cond_0
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 81
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 87
    :cond_1
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 89
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getFrom()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 92
    :cond_2
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 95
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getRtime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 100
    :cond_3
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getNonce()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 102
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getEType()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/EncryptionTypeEncoder;->encode([Lorg/apache/kerberos/crypto/encryption/EncryptionType;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 105
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 107
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/HostAddressesEncoder;->encodeSequence(Lorg/apache/kerberos/messages/value/HostAddresses;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 111
    :cond_4
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 113
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getEncAuthorizationData()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/EncryptedDataEncoder;->encodeSequence(Lorg/apache/kerberos/messages/value/EncryptedData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 117
    :cond_5
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAdditionalTickets()[Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 119
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcRequest;->getAdditionalTickets()[Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/kerberos/io/encoder/TicketEncoder;->encodeSequence([Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    const/16 v2, 0xb

    invoke-direct {v1, v2, p1}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    :cond_6
    return-object v0
.end method


# virtual methods
.method public encode(Lorg/apache/kerberos/messages/KdcRequest;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    new-instance v1, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/encoder/KdcReqBodyEncoder;->encodeInitialSequence(Lorg/apache/kerberos/messages/KdcRequest;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
