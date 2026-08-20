.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchDnAttributesRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;
.source "ExtensibleMatchDnAttributesRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 47
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->finish()V

    .line 48
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchDnAttributesRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;

    .line 49
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchDnAttributesRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->popBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;->setDnAttributes(Z)V

    return-void
.end method
