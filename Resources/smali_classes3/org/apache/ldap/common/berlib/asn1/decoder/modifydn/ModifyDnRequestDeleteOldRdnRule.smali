.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestDeleteOldRdnRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;
.source "ModifyDnRequestDeleteOldRdnRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 67
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->finish()V

    .line 71
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestDeleteOldRdnRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->popBoolean()Z

    move-result v0

    .line 74
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestDeleteOldRdnRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/ModifyDnRequest;

    .line 76
    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/ModifyDnRequest;->setDeleteOldRdn(Z)V

    return-void
.end method

.method public tag(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveBooleanRule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void
.end method
