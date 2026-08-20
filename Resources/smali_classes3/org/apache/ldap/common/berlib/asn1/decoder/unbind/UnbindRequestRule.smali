.class public Lorg/apache/ldap/common/berlib/asn1/decoder/unbind/UnbindRequestRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "UnbindRequestRule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 54
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 55
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/unbind/UnbindRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 42
    new-instance p1, Lorg/apache/ldap/common/message/UnbindRequestImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/unbind/UnbindRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/message/UnbindRequestImpl;-><init>(I)V

    .line 45
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/unbind/UnbindRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void
.end method
