.class public Lorg/apache/kerberos/io/decoder/KerberosTimeDecoder;
.super Ljava/lang/Object;
.source "KerberosTimeDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lorg/apache/asn1/der/DERGeneralizedTime;)Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/asn1/der/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    .line 46
    :goto_0
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v0, p0}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(Ljava/util/Date;)V

    return-object v0
.end method
