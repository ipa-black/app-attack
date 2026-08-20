.class public Lorg/apache/kerberos/io/encoder/AuthorizationDataEncoder;
.super Ljava/lang/Object;
.source "AuthorizationDataEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/value/AuthorizationData;)Lorg/apache/asn1/der/DERSequence;
    .locals 6

    .line 40
    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/AuthorizationData;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 41
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;

    .line 46
    new-instance v2, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v2}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 47
    new-instance v3, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;->getAuthorizationDataType()Lorg/apache/kerberos/messages/value/AuthorizationType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/kerberos/messages/value/AuthorizationType;->getOrdinal()I

    move-result v4

    invoke-static {v4}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v2, v3}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 48
    new-instance v3, Lorg/apache/asn1/der/DERTaggedObject;

    new-instance v4, Lorg/apache/asn1/der/DEROctetString;

    invoke-virtual {v1}, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;->getAuthorizationData()[B

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/asn1/der/DEROctetString;-><init>([B)V

    const/4 v1, 0x1

    invoke-direct {v3, v1, v4}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v2, v3}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 49
    invoke-virtual {v0, v2}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
