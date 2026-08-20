.class public Lorg/apache/kerberos/io/encoder/EncApRepPartEncoder;
.super Ljava/lang/Object;
.source "EncApRepPartEncoder.java"


# static fields
.field public static final APPLICATION_CODE:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeApRepPartSequence(Lorg/apache/kerberos/messages/components/EncApRepPart;)Lorg/apache/asn1/der/DERSequence;
    .locals 4

    .line 49
    new-instance v0, Lorg/apache/asn1/der/DERSequence;

    invoke-direct {v0}, Lorg/apache/asn1/der/DERSequence;-><init>()V

    .line 51
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/EncApRepPart;->getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/KerberosTimeEncoder;->encode(Lorg/apache/kerberos/messages/value/KerberosTime;)Lorg/apache/asn1/der/DERGeneralizedTime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 52
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/EncApRepPart;->getClientMicroSecond()I

    move-result v2

    invoke-static {v2}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 54
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/EncApRepPart;->getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/EncApRepPart;->getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/kerberos/io/encoder/EncryptionKeyEncoder;->encode(Lorg/apache/kerberos/messages/value/EncryptionKey;)Lorg/apache/asn1/der/DERSequence;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/EncApRepPart;->getSequenceNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v1, Lorg/apache/asn1/der/DERTaggedObject;

    invoke-virtual {p1}, Lorg/apache/kerberos/messages/components/EncApRepPart;->getSequenceNumber()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/asn1/der/DERInteger;->valueOf(I)Lorg/apache/asn1/der/DERInteger;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lorg/apache/asn1/der/DERTaggedObject;-><init>(ILorg/apache/asn1/der/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/der/DERSequence;->add(Lorg/apache/asn1/der/DEREncodable;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public encode(Lorg/apache/kerberos/messages/components/EncApRepPart;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    new-instance v1, Lorg/apache/asn1/der/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/apache/asn1/der/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/kerberos/io/encoder/EncApRepPartEncoder;->encodeApRepPartSequence(Lorg/apache/kerberos/messages/components/EncApRepPart;)Lorg/apache/asn1/der/DERSequence;

    move-result-object p1

    const/16 v2, 0x1b

    .line 41
    invoke-static {v2, p1}, Lorg/apache/asn1/der/DERApplicationSpecific;->valueOf(ILorg/apache/asn1/der/DEREncodable;)Lorg/apache/asn1/der/DERApplicationSpecific;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/asn1/der/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1}, Lorg/apache/asn1/der/ASN1OutputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
