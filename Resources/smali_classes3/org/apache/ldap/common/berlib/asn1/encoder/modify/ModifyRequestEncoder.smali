.class public Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;
.super Ljava/lang/Object;
.source "ModifyRequestEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/ldap/common/message/ModifyRequest;)Lorg/apache/asn1/ber/TupleNode;
    .locals 7

    .line 57
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 59
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 60
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 63
    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getMessageId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 65
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 66
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 69
    new-instance v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v4, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v4}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v1, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 71
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v4

    sget-object v5, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v4, v5, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 72
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 75
    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v4

    check-cast v4, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 77
    invoke-virtual {v1, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 78
    invoke-virtual {v4, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 81
    new-instance v4, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v5, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v5}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v4, v5}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 83
    invoke-virtual {v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v5

    sget-object v6, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v5, v6, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 84
    invoke-virtual {v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 87
    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getModificationItems()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 88
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/ModificationItem;

    .line 91
    sget-object v3, Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;

    invoke-virtual {v3, v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;->encode(Ljavax/naming/directory/ModificationItem;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 93
    invoke-virtual {v4, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 94
    invoke-virtual {v2, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 98
    invoke-virtual {v4, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 100
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 101
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-object v0
.end method
