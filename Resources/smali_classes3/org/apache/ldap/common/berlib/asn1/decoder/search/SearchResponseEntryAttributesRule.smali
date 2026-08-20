.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;
.super Lorg/apache/asn1/ber/digester/AbstractRule;
.source "SearchResponseEntryAttributesRule.java"


# instance fields
.field private final expected:Lorg/apache/asn1/ber/TagEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 58
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->expected:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/TagEnum;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->expected:Lorg/apache/asn1/ber/TagEnum;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 90
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/AbstractRule;->finish()V

    .line 92
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/AbstractRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    .line 70
    iget-object p2, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->expected:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;

    .line 79
    new-instance p2, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    .line 80
    invoke-virtual {p1, p2}, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 81
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->push(Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "expected tag with id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->expected:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;->expected:Lorg/apache/asn1/ber/TagEnum;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " but got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, "instead"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
