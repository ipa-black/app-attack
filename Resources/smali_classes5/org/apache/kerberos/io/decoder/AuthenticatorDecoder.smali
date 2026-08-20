.class public Lorg/apache/kerberos/io/decoder/AuthenticatorDecoder;
.super Ljava/lang/Object;
.source "AuthenticatorDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/components/Authenticator;
    .locals 3

    .line 66
    new-instance v0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;-><init>()V

    .line 68
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 71
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 72
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 110
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/AuthorizationDataDecoder;->decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setAuthorizationData(Lorg/apache/kerberos/messages/value/AuthorizationData;)V

    goto :goto_0

    .line 105
    :pswitch_1
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 106
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setSequenceNumber(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 102
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/EncryptionKeyDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setSubSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V

    goto :goto_0

    .line 97
    :pswitch_3
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 98
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setClientTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 93
    :pswitch_4
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 94
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setClientMicroSecond(I)V

    goto :goto_0

    .line 89
    :pswitch_5
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 90
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/ChecksumDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/Checksum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setChecksum(Lorg/apache/kerberos/messages/value/Checksum;)V

    goto :goto_0

    .line 85
    :pswitch_6
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 86
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PrincipalName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setClientName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    goto :goto_0

    .line 81
    :pswitch_7
    check-cast v1, Lorg/apache/asn1/der/DERGeneralString;

    .line 82
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setClientRealm(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_8
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 78
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->setVersionNumber(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->getAuthenticator()Lorg/apache/kerberos/messages/components/Authenticator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
.method public decode([B)Lorg/apache/kerberos/messages/components/Authenticator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 41
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERApplicationSpecific;

    .line 43
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 45
    invoke-static {p1}, Lorg/apache/kerberos/io/decoder/AuthenticatorDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/components/Authenticator;

    move-result-object p1

    return-object p1
.end method
