.class public Lorg/apache/kerberos/io/decoder/EncTicketPartDecoder;
.super Ljava/lang/Object;
.source "EncTicketPartDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeEncTicketPartSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/components/EncTicketPart;
    .locals 3

    .line 70
    new-instance v0, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;-><init>()V

    .line 72
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 75
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 76
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 122
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthorizationData(Lorg/apache/kerberos/messages/value/AuthorizationData;)V

    goto :goto_0

    .line 117
    :pswitch_1
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 118
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/HostAddressDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    goto :goto_0

    .line 113
    :pswitch_2
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 114
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setRenewTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 109
    :pswitch_3
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 110
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setEndTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 105
    :pswitch_4
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 106
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setStartTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 101
    :pswitch_5
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 102
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setAuthTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 97
    :pswitch_6
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 98
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/io/decoder/EncTicketPartDecoder;->decodeTransitedEncoding(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/TransitedEncoding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setTransitedEncoding(Lorg/apache/kerberos/messages/value/TransitedEncoding;)V

    goto :goto_0

    .line 93
    :pswitch_7
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 94
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PrincipalName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    goto :goto_0

    .line 89
    :pswitch_8
    check-cast v1, Lorg/apache/asn1/der/DERGeneralString;

    .line 90
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setClientRealm(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_9
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 86
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptionKeyDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    goto :goto_0

    .line 81
    :pswitch_a
    check-cast v1, Lorg/apache/asn1/der/DERBitString;

    .line 82
    new-instance v2, Lorg/apache/kerberos/messages/value/TicketFlags;

    invoke-virtual {v1}, Lorg/apache/asn1/der/DERBitString;->getOctets()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->setFlags(Lorg/apache/kerberos/messages/value/TicketFlags;)V

    goto/16 :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/EncTicketPartModifier;->getEncTicketPart()Lorg/apache/kerberos/messages/components/EncTicketPart;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/components/EncTicketPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 46
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 48
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/decoder/EncTicketPartDecoder;->decodeEncTicketPartSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/components/EncTicketPart;

    move-result-object p1

    return-object p1
.end method

.method protected decodeTransitedEncoding(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/TransitedEncoding;
    .locals 5

    .line 135
    sget-object v0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->NULL:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    .line 138
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERTaggedObject;

    .line 141
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v3

    .line 142
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    check-cast v2, Lorg/apache/asn1/der/DEROctetString;

    .line 152
    invoke-virtual {v2}, Lorg/apache/asn1/der/DEROctetString;->getOctets()[B

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_1
    check-cast v2, Lorg/apache/asn1/der/DERInteger;

    .line 148
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    new-instance p1, Lorg/apache/kerberos/messages/value/TransitedEncoding;

    invoke-direct {p1, v0, v1}, Lorg/apache/kerberos/messages/value/TransitedEncoding;-><init>(Lorg/apache/kerberos/messages/value/TransitedEncodingType;[B)V

    return-object p1
.end method
