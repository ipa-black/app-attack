.class public Lorg/apache/kerberos/io/decoder/TicketDecoder;
.super Ljava/lang/Object;
.source "TicketDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lorg/apache/asn1/der/DERApplicationSpecific;)Lorg/apache/kerberos/messages/components/Ticket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERApplicationSpecific;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/apache/asn1/der/DERSequence;

    .line 61
    new-instance v0, Lorg/apache/kerberos/messages/components/TicketModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/components/TicketModifier;-><init>()V

    .line 63
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 66
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 67
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 85
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/TicketModifier;->setEncPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V

    goto :goto_0

    .line 80
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 81
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PrincipalName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/TicketModifier;->setServerName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    goto :goto_0

    .line 76
    :cond_2
    check-cast v1, Lorg/apache/asn1/der/DERGeneralString;

    .line 77
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/TicketModifier;->setServerRealm(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 73
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/TicketModifier;->setTicketVersionNumber(I)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/TicketModifier;->getTicket()Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object p0

    return-object p0
.end method

.method public static decodeSequence(Lorg/apache/asn1/der/DERSequence;)[Lorg/apache/kerberos/messages/components/Ticket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/messages/components/Ticket;

    .line 40
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 43
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/TicketDecoder;->decode(Lorg/apache/asn1/der/DERApplicationSpecific;)Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method
