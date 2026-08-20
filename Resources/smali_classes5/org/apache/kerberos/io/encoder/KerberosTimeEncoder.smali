.class public Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;
.super Ljava/lang/Object;
.source "KerberosTimeEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lorg/apache/kerberos/messages/value/KerberosTime;->toDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/asn1/der/DERGeneralizedTime;->valueOf(Ljava/util/Date;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object p0

    return-object p0
.end method
