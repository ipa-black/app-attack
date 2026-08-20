.class public Lorg/apache/kerberos/io/encoder/TicketEncoder;
.super Ljava/lang/Object;
.source "TicketEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/asn1/der/DERApplicationSpecific;
    .locals 5

    .line 40
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 42
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/components/Ticket;->getTicketVersionNumber()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 43
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/components/Ticket;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 44
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/components/Ticket;->getServerPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 45
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/components/Ticket;->getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/kerberos/io/encoder/EncryptedDataEncoder;->encodeSequence(Lorg/apache/kerberos/messages/value/EncryptedData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 51
    :try_start_0
    invoke-static {v3, v0}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static encodeSequence([Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 63
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    const/4 v1, 0x0

    .line 65
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 67
    new-instance v2, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v2}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 68
    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/apache/kerberos/io/encoder/TicketEncoder;->encode(Lorg/apache/kerberos/messages/components/Ticket;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 69
    invoke-virtual {v0, v2}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
