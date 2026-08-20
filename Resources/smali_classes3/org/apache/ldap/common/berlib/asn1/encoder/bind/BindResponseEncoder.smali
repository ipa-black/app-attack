.class public Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;
.super Ljava/lang/Object;
.source "BindResponseEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/ldap/common/message/BindResponse;)Lorg/apache/asn1/ber/TupleNode;
    .locals 6

    .line 56
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 58
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 59
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 62
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindResponse;->getMessageId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 64
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 65
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 68
    new-instance v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v4, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v4}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v1, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 70
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v4

    sget-object v5, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v4, v5, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 71
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 74
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindResponse;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/LdapResultEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/message/LdapResult;)V

    .line 77
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindResponse;->getServerSaslCreds()[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 83
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-object v0

    .line 79
    :cond_0
    new-instance p1, Lorg/apache/commons/lang/NotImplementedException;

    const-string v0, "SASL binds not implemented"

    invoke-direct {p1, v0}, Lorg/apache/commons/lang/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
