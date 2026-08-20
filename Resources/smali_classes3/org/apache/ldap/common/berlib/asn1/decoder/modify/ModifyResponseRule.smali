.class public Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyResponseRule;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;
.source "ModifyResponseRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;-><init>(Lorg/apache/ldap/common/berlib/asn1/LdapTag;)V

    return-void
.end method
