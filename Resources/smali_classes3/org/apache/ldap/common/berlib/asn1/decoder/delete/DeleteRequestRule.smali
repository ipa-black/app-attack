.class public Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;
.source "DeleteRequestRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->DEL_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 66
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->finish()V

    .line 68
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 69
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/BufferUtils;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/DeleteRequest;

    .line 71
    invoke-interface {v0, v1}, Lorg/apache/ldap/common/message/DeleteRequest;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 56
    new-instance p1, Lorg/apache/ldap/common/message/DeleteRequestImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/message/DeleteRequestImpl;-><init>(I)V

    .line 57
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void
.end method
