.class public Lorg/apache/kerberos/io/encoder/LastRequestEncoder;
.super Ljava/lang/Object;
.source "LastRequestEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/value/LastRequest;)Lorg/apache/asn1/der/DERSequence;
    .locals 7

    .line 38
    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/LastRequest;->getEntries()[Lorg/apache/kerberos/messages/value/LastRequestEntry;

    move-result-object p0

    .line 39
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 41
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 43
    new-instance v3, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v3}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 44
    new-instance v4, Lorg/apache/asn1/der/DERTaggedObject;

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/LastRequestEntry;->getLastRequestType()Lorg/apache/kerberos/messages/value/LastRequestType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/LastRequestType;->getOrdinal()I

    move-result v5

    invoke-static {v5}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v3, v4}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 45
    new-instance v4, Lorg/apache/asn1/der/DERTaggedObject;

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/LastRequestEntry;->getLastRequestValue()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/KerberosTime;->toDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/asn1/der/DERGeneralizedTime;->valueOf(Ljava/util/Date;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v3, v4}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 46
    invoke-virtual {v0, v3}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
