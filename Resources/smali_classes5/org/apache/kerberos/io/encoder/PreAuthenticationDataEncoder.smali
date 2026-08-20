.class public Lorg/apache/kerberos/io/encoder/PreAuthenticationDataEncoder;
.super Ljava/lang/Object;
.source "PreAuthenticationDataEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/value/PreAuthenticationData;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 65
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 67
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataType()Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 69
    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataValue()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v2, Lorg/apache/asn1/der/DEROctetString;

    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->getDataValue()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/asn1/der/DEROctetString;-><init>([B)V

    const/4 p0, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    :cond_0
    return-object v0
.end method

.method public static encode([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)[B
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
    invoke-static {p0}, Lorg/apache/kerberos/io/encoder/PreAuthenticationDataEncoder;->encodeSequence([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method protected static encodeSequence([Lorg/apache/kerberos/messages/value/PreAuthenticationData;)Lorg/apache/asn1/der/DERSequence;
    .locals 3

    .line 47
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 51
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/PreAuthenticationDataEncoder;->encode(Lorg/apache/kerberos/messages/value/PreAuthenticationData;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
