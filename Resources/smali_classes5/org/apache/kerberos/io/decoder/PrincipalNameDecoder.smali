.class public Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;
.super Ljava/lang/Object;
.source "PrincipalNameDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lorg/apache/asn1/der/DERSequence;)Lorg/apache/kerberos/messages/value/PrincipalName;
    .locals 4

    .line 41
    new-instance v0, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;-><init>()V

    .line 43
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/der/DERTaggedObject;

    .line 46
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getTagNo()I

    move-result v2

    .line 47
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERTaggedObject;->getObject()Lorg/apache/asn1/der/DEREncodable;

    move-result-object v1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    check-cast v1, Lorg/apache/asn1/der/DERSequence;

    .line 57
    invoke-static {v1, v0}, Lorg/apache/kerberos/io/decoder/PrincipalNameDecoder;->decodeNameString(Lorg/apache/asn1/der/DERSequence;Lorg/apache/kerberos/messages/value/PrincipalNameModifier;)V

    goto :goto_0

    .line 52
    :cond_1
    check-cast v1, Lorg/apache/asn1/der/DERInteger;

    .line 53
    invoke-virtual {v1}, Lorg/apache/asn1/der/DERInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->setType(I)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->getPrincipalName()Lorg/apache/kerberos/messages/value/PrincipalName;

    move-result-object p0

    return-object p0
.end method

.method private static decodeNameString(Lorg/apache/asn1/der/DERSequence;Lorg/apache/kerberos/messages/value/PrincipalNameModifier;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/der/DERGeneralString;

    .line 70
    invoke-virtual {v0}, Lorg/apache/asn1/der/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->addName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
