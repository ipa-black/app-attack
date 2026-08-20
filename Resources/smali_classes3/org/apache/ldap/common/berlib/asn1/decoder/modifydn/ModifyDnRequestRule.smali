.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "ModifyDnRequestRule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 42
    invoke-static {p1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getLdapTagById(I)Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    move-result-object p1

    .line 44
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    if-ne p2, p1, :cond_0

    .line 50
    new-instance p1, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;-><init>(I)V

    .line 52
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expected a ModifyDnRequest tag id but got a "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
