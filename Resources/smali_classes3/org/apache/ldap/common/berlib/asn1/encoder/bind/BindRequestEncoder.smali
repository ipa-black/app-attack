.class public Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;
.super Ljava/lang/Object;
.source "BindRequestEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/ldap/common/message/BindRequest;)Lorg/apache/asn1/ber/TupleNode;
    .locals 6

    .line 52
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 54
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 55
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 58
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->getMessageId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 60
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 61
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 64
    new-instance v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v4, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v4}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v1, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 66
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v4

    sget-object v5, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v4, v5, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 67
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 70
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->getVersion3()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-static {v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 72
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 73
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 76
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 78
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 79
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 82
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_0:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->getCredentials()[B

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;[B)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 86
    invoke-virtual {v1, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 87
    invoke-virtual {p1, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 94
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 95
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-object v0

    .line 91
    :cond_1
    new-instance p1, Lorg/apache/commons/lang/NotImplementedException;

    const-string v0, "SASL not yet implemented!"

    invoke-direct {p1, v0}, Lorg/apache/commons/lang/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
