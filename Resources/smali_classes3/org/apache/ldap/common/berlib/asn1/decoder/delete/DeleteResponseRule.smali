.class public Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteResponseRule;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;
.source "DeleteResponseRule.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->DEL_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultResponseRule;-><init>(Lorg/apache/ldap/common/berlib/asn1/LdapTag;)V

    return-void
.end method
