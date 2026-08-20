.class public Lorg/apache/kerberos/io/decoder/LastRequestDecoder;
.super Ljava/lang/Object;
.source "LastRequestDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/LastRequestEntry;
    .locals 5

    .line 59
    sget-object v0, Lorg/apache/kerberos/messages/value/LastRequestType;->NONE:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 62
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERTaggedObject;

    .line 65
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v3

    .line 66
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    check-cast v2, Lorg/apache/asn1/der/DERGeneralizedTime;

    .line 76
    invoke-static {v2}, Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;->decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_1
    check-cast v2, Lorg/apache/asn1/der/DERInteger;

    .line 72
    invoke-virtual {v2}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/kerberos/messages/value/LastRequestType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/LastRequestType;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    new-instance p1, Lorg/apache/kerberos/messages/value/LastRequestEntry;

    invoke-direct {p1, v0, v1}, Lorg/apache/kerberos/messages/value/LastRequestEntry;-><init>(Lorg/apache/kerberos/messages/value/LastRequestType;Lorg/apache/kerberos/messages/value/KerberosTime;)V

    return-object p1
.end method

.method protected decodeSequence(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/LastRequest;
    .locals 3

    .line 43
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/messages/value/LastRequestEntry;

    .line 46
    invoke-virtual {p1}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/der/DERSequence;

    .line 49
    invoke-virtual {p0, v2}, Lorg/apache/kerberos/io/decoder/LastRequestDecoder;->decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/LastRequestEntry;

    move-result-object v2

    .line 50
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Lorg/apache/kerberos/messages/value/LastRequest;

    invoke-direct {p1, v0}, Lorg/apache/kerberos/messages/value/LastRequest;-><init>([Lorg/apache/kerberos/messages/value/LastRequestEntry;)V

    return-object p1
.end method
