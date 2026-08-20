.class public Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;
.super Ljava/lang/Object;
.source "EncryptedTimestampDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([B)Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/asn1/der/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/apache/asn1/der/ASN1InputStream;-><init>([B)V

    .line 47
    invoke-virtual {v0}, Lorg/apache/asn1/der/ASN1InputStream;->readObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/der/DERSequence;

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/kerberos/io/decoder/EncryptedTimestampDecoder;->decodeEncryptedTimestamp(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;

    move-result-object p1

    return-object p1
.end method

.method protected decodeEncryptedTimestamp(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;
    .locals 4

    .line 54
    new-instance v0, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 59
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 60
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 70
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->setMicroSecond(I)V

    goto :goto_0

    .line 65
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 66
    invoke-static {v1}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->setKerberosTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->getEncryptedTimestamp()Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;

    move-result-object p1

    return-object p1
.end method
