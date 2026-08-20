.class public Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;
.super Ljava/lang/Object;
.source "ErrorMessageEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeErrorMessageSequence(Lorg/apache/kerberos/messages/ErrorMessage;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 61
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 63
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getProtocolVersionNumber()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 65
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 67
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientMicroSecond()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientMicroSecond()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 77
    :cond_1
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getServerTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 79
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getServerMicroSecond()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 81
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 83
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 88
    :cond_2
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 93
    :cond_3
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 95
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 97
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getExplanatoryText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 99
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getExplanatoryText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 102
    :cond_4
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getExplanatoryData()[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 104
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v2, Lorg/apache/asn1/der/DEROctetString;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getExplanatoryData()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/asn1/der/DEROctetString;-><init>([B)V

    const/16 p1, 0xc

    invoke-direct {v1, p1, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public encode(Lorg/apache/kerberos/messages/ErrorMessage;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v0, p2}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;->encodeErrorMessageSequence(Lorg/apache/kerberos/messages/ErrorMessage;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p2

    .line 41
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result p1

    invoke-static {p1, p2}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    return-void
.end method

.method public encode(Lorg/apache/kerberos/messages/ErrorMessage;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    new-instance v1, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;->encodeErrorMessageSequence(Lorg/apache/kerberos/messages/ErrorMessage;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/ErrorMessage;->getMessageType()Lorg/apache/kerberos/messages/MessageType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/MessageType;->getOrdinal()I

    move-result p1

    invoke-static {p1, v2}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v1}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
