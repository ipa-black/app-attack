.class public abstract Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "ResultResponseRule.java"


# instance fields
.field private final tag:Lorg/apache/ldap/common/berlib/asn1/LdapTag;


# direct methods
.method protected constructor <init>(Lorg/apache/ldap/common/berlib/asn1/LdapTag;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->tag:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ldap/common/message/ResultResponse;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->tag:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getTagId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 93
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    .line 96
    invoke-static {p1, p2}, Lorg/apache/ldap/common/berlib/asn1/LdapMessageFactory;->create(II)Lorg/apache/ldap/common/message/Message;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/message/ResultResponse;

    .line 99
    new-instance p2, Lorg/apache/ldap/common/message/LdapResultImpl;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/message/ResultResponse;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Rule firing stage method "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, ".tag() expected an id of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->tag:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getTagId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " for tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;->tag:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " but instead encountered a tag id  of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
