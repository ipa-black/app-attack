.class public Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "ResultRule.java"


# instance fields
.field private result:Lorg/apache/ldap/common/message/LdapResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 59
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 61
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 62
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/LdapResult;->setErrorMessage(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 64
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result v0

    .line 66
    iget-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    invoke-static {v0}, Lorg/apache/ldap/common/message/ResultCodeEnum;->getResultCodeEnum(I)Lorg/apache/ldap/common/message/ResultCodeEnum;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/message/ResultResponse;

    .line 49
    new-instance p2, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    iput-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    .line 50
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultRule;->result:Lorg/apache/ldap/common/message/LdapResult;

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void
.end method
