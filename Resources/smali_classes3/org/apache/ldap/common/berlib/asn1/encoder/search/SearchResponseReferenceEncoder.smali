.class public Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;
.super Ljava/lang/Object;
.source "SearchResponseReferenceEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/ldap/common/message/SearchResponseReference;)Lorg/apache/asn1/ber/TupleNode;
    .locals 5

    .line 53
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 55
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 56
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 59
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getMessageId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 62
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 65
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/ReferralEncoder;->encode(Lorg/apache/ldap/common/message/Referral;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 67
    invoke-virtual {p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v4, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_REFERENCE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1, v4, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 68
    invoke-virtual {p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 70
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 71
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-object v0
.end method
