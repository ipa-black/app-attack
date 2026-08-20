.class public Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;
.source "AbandonRequestRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ABANDON_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 62
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->finish()V

    .line 63
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/message/AbandonRequest;

    .line 64
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/common/message/AbandonRequest;->setAbandoned(I)V

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 52
    new-instance p1, Lorg/apache/ldap/common/message/AbandonRequestImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/message/AbandonRequestImpl;-><init>(I)V

    .line 53
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void
.end method
