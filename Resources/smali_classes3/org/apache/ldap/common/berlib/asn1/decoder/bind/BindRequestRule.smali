.class public Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "BindRequestRule.java"


# static fields
.field private static final NESTING_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getValue()I

    move-result v0

    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getValue()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;->NESTING_PATTERN:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    return-void
.end method

.method public static getNestingPattern()[I
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;->NESTING_PATTERN:[I

    return-object v0
.end method

.method public static getTag()Lorg/apache/ldap/common/berlib/asn1/LdapTag;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 72
    invoke-static {p1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getLdapTagById(I)Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    move-result-object p1

    .line 74
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    if-ne p2, p1, :cond_0

    .line 80
    new-instance p1, Lorg/apache/ldap/common/message/BindRequestImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/message/BindRequestImpl;-><init>(I)V

    .line 81
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Expected a BIND_REQUEST tag id but got a "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
