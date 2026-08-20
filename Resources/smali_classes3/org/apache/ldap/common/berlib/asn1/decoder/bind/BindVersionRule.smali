.class public Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindVersionRule;
.super Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;
.source "BindVersionRule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 42
    invoke-super {p0}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;->finish()V

    .line 45
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindVersionRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->popInt()I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindVersionRule;->getDigester()Lorg/apache/asn1/ber/digester/BERDigester;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/BERDigester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/message/BindRequest;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-interface {v1, v0}, Lorg/apache/ldap/common/message/BindRequest;->setVersion3(Z)V

    return-void
.end method
