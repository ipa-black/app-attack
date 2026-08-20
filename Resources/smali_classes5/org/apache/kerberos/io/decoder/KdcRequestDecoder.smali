.class public Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;
.super Ljava/lang/Object;
.source "KdcRequestDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeKdcRequestSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/KdcRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->NULL:Lorg/apache/kerberos/messages/MessageType;

    .line 72
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/asn1/der/DERTaggedObject;

    .line 75
    invoke-virtual {v4}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v5

    .line 76
    invoke-virtual {v4}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    check-cast v4, Lorg/apache/asn1/der/DERSequence;

    .line 94
    invoke-direct {p0, v4}, Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;->decodeRequestBody(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/RequestBody;

    move-result-object v3

    goto :goto_0

    .line 89
    :cond_1
    check-cast v4, Lorg/apache/asn1/der/DERSequence;

    .line 90
    invoke-static {v4}, Lorg/apache/kerberos/io/decoder/PreAuthenticationDataDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)[Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_2
    check-cast v4, Lorg/apache/asn1/der/DERInteger;

    .line 86
    invoke-virtual {v4}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/messages/MessageType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/MessageType;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_3
    check-cast v4, Lorg/apache/asn1/der/DERInteger;

    .line 82
    invoke-virtual {v4}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    goto :goto_0

    .line 99
    :cond_4
    new-instance p1, Lorg/apache/kerberos/messages/KdcRequest;

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/apache/kerberos/messages/KdcRequest;-><init>(ILorg/apache/kerberos/messages/MessageType;[Lorg/apache/kerberos/messages/value/PreAuthenticationData;Lorg/apache/kerberos/messages/value/RequestBody;)V

    return-object p1
.end method

.method private decodeRequestBody(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/apache/kerberos/messages/value/RequestBodyModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;-><init>()V

    .line 125
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 128
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 129
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 179
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/TicketDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)[Lorg/apache/kerberos/messages/components/Ticket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setAdditionalTickets([Lorg/apache/kerberos/messages/components/Ticket;)V

    goto :goto_0

    .line 174
    :pswitch_1
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 175
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptedDataDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setEncAuthorizationData(Lorg/apache/kerberos/messages/value/EncryptedData;)V

    goto :goto_0

    .line 170
    :pswitch_2
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 171
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/HostAddressDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/HostAddresses;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setAddresses(Lorg/apache/kerberos/messages/value/HostAddresses;)V

    goto :goto_0

    .line 166
    :pswitch_3
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 167
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptionTypeDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setEType([Lorg/apache/kerberos/crypto/encryption/EncryptionType;)V

    goto :goto_0

    .line 162
    :pswitch_4
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 163
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setNonce(I)V

    goto :goto_0

    .line 158
    :pswitch_5
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 159
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setRtime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 154
    :pswitch_6
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 155
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setTill(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 150
    :pswitch_7
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 151
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setFrom(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 146
    :pswitch_8
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 147
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PrincipalName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setServerName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    goto :goto_0

    .line 142
    :pswitch_9
    check-cast v1, Lorg/apache/asn1/der/DERGeneralString;

    .line 143
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setRealm(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_a
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 139
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PrincipalName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setClientName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    goto/16 :goto_0

    .line 134
    :pswitch_b
    check-cast v1, Lorg/apache/asn1/der/DERBitString;

    .line 135
    new-instance v2, Lorg/apache/kerberos/messages/value/KdcOptions;

    invoke-virtual {v1}, Lorg/apache/asn1/der/DERBitString;->getOctets()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->setKdcOptions(Lorg/apache/kerberos/messages/value/KdcOptions;)V

    goto/16 :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/RequestBodyModifier;->getRequestBody()Lorg/apache/kerberos/messages/value/RequestBody;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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
.method public decode(Ljava/nio/ByteBuffer;)Lorg/apache/kerberos/messages/KdcRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 47
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 49
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/decoder/KdcRequestDecoder;->decodeKdcRequestSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/KdcRequest;

    move-result-object p1

    return-object p1
.end method
