.class public Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "BindSimpleCredentialsRule.java"


# static fields
.field private static final TAG:Lorg/apache/asn1/ber/TagEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule$1;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const-string v3, "BindSimpleCredentials"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;->TAG:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;->TAG:Lorg/apache/asn1/ber/TagEnum;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 62
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 65
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/BindRequest;

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 79
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v0, v2

    :goto_0
    const/4 v2, 0x1

    .line 82
    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/BindRequest;->setSimple(Z)V

    .line 83
    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/BindRequest;->setCredentials([B)V

    return-void
.end method
