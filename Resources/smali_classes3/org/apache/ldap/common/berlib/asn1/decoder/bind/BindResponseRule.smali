.class public Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;
.source "BindResponseRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;-><init>(Lorg/apache/ldap/common/berlib/asn1/LdapTag;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 56
    invoke-super {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->finish()V

    .line 58
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/BindResponse;

    .line 62
    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/BindResponse;->setServerSaslCreds([B)V

    :cond_0
    return-void
.end method
