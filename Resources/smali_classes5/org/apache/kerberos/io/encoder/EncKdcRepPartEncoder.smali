.class public abstract Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;
.super Ljava/lang/Object;
.source "EncKdcRepPartEncoder.java"


# instance fields
.field private applicationCode:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;->applicationCode:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/kerberos/messages/KdcReply;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    new-instance v1, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;->encodeInitialSequence(Lorg/apache/kerberos/messages/KdcReply;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    .line 48
    iget v2, p0, Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;->applicationCode:I

    invoke-static {v2, p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected encodeInitialSequence(Lorg/apache/kerberos/messages/KdcReply;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 72
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 74
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/EncryptionKeyEncoder;->encode(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 75
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getLastRequest()Lorg/apache/kerberos/messages/value/LastRequest;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/LastRequestEncoder;->encode(Lorg/apache/kerberos/messages/value/LastRequest;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 76
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getNonce()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 79
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getKeyExpiration()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getKeyExpiration()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 84
    :cond_0
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v2, Lorg/apache/asn1/der/DERBitString;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getFlags()Lorg/apache/kerberos/messages/value/TicketFlags;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/kerberos/messages/value/TicketFlags;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/asn1/der/DERBitString;-><init>([B)V

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 85
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getAuthTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 88
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getStartTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 93
    :cond_1
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getEndTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 96
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getRenewTill()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 101
    :cond_2
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getServerRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 102
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 105
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/KdcReply;->getClientAddresses()Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/kerberos/io/encoder/HostAddressesEncoder;->encodeSequence(Lorg/apache/kerberos/messages/value/HostAddresses;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    const/16 v2, 0xb

    invoke-direct {v1, v2, p1}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    :cond_3
    return-object v0
.end method
