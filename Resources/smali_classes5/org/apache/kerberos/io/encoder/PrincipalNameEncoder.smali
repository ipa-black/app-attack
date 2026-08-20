.class public Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;
.super Ljava/lang/Object;
.source "PrincipalNameEncoder.java"


# static fields
.field private static final COMPONENT_SEPARATOR:Ljava/lang/String; = "/"

.field private static final REALM_SEPARATOR:Ljava/lang/String; = "@"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 45
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 47
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getNameType()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 48
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    const/4 v2, 0x1

    invoke-static {p0}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->encodeNameSequence(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    return-object v0
.end method

.method private static encodeNameSequence(Ljavax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/asn1/der/DERSequence;
    .locals 2

    .line 55
    invoke-static {p0}, Lorg/apache/kerberos/io/encoder/PrincipalNameEncoder;->getNameStrings(Ljavax/security/auth/kerberos/KerberosPrincipal;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 57
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 59
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/asn1/der/DERGeneralString;->valueOf(Ljava/lang/String;)Lorg/apache/asn1/der/DERGeneralString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getNameStrings(Ljavax/security/auth/kerberos/KerberosPrincipal;)Ljava/util/List;
    .locals 1

    .line 69
    invoke-virtual {p0}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 70
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
