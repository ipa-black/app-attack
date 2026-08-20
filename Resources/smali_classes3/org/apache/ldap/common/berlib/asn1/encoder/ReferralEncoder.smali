.class public Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;
.super Ljava/lang/Object;
.source "ReferralEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/ldap/common/message/Referral;)Lorg/apache/asn1/ber/TupleNode;
    .locals 3

    .line 53
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    .line 54
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    const/4 v1, -0x2

    .line 55
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 56
    new-instance v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 58
    invoke-interface {p1}, Lorg/apache/ldap/common/message/Referral;->getLdapUrls()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 63
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 64
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
