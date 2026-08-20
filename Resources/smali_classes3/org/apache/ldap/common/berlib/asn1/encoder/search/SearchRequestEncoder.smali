.class public Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;
.super Ljava/lang/Object;
.source "SearchRequestEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encode(Ljava/util/Collection;)Lorg/apache/asn1/ber/DefaultMutableTupleNode;
    .locals 4

    .line 370
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 372
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 373
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 375
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 376
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 380
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 381
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 2

    .line 316
    invoke-interface {p2}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    check-cast p2, Lorg/apache/ldap/common/filter/LeafNode;

    .line 320
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/LeafNode;->getAssertionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unrecognized assertion type value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/LeafNode;->getAssertionType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :pswitch_0
    check-cast p2, Lorg/apache/ldap/common/filter/ExtensibleNode;

    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    goto :goto_0

    .line 334
    :pswitch_1
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_6:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    check-cast p2, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/SimpleNode;)V

    goto :goto_0

    .line 330
    :pswitch_2
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_5:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    check-cast p2, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/SimpleNode;)V

    goto :goto_0

    .line 327
    :pswitch_3
    check-cast p2, Lorg/apache/ldap/common/filter/SubstringNode;

    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    goto :goto_0

    .line 338
    :pswitch_4
    move-object v0, p2

    check-cast v0, Lorg/apache/ldap/common/filter/PresenceNode;

    .line 339
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_7:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/PresenceNode;)V

    .line 341
    :pswitch_5
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_8:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    check-cast p2, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/SimpleNode;)V

    goto :goto_0

    .line 323
    :pswitch_6
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_3:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    check-cast p2, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/SimpleNode;)V

    :goto_0
    return-void

    .line 356
    :cond_0
    check-cast p2, Lorg/apache/ldap/common/filter/BranchNode;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encodeBranchNode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/BranchNode;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Lorg/apache/ldap/common/message/SearchRequest;)Lorg/apache/asn1/ber/TupleNode;
    .locals 6

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
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

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

    sget-object v5, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v4, v5, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 72
    invoke-virtual {v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 75
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getBase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 77
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 78
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 81
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getScope()Lorg/apache/ldap/common/message/ScopeEnum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ldap/common/message/ScopeEnum;->getLdapValue()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 83
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 84
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 87
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 89
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 90
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 93
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getSizeLimit()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 95
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 96
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 99
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getTimeLimit()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 101
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 102
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 105
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getTypesOnly()Z

    move-result v2

    invoke-static {v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Z)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 107
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 108
    invoke-virtual {v2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 111
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getFilter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 114
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Ljava/util/Collection;)Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    move-result-object p1

    .line 115
    invoke-virtual {v1, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 116
    invoke-virtual {p1, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 118
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 119
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-object v0
.end method

.method public encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/ExtensibleNode;)V
    .locals 3

    .line 230
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 232
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 233
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p2

    const/4 v1, -0x2

    invoke-virtual {p2, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 236
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getMatchingRuleId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 238
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getMatchingRuleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 240
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 241
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 244
    :cond_0
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getAttribute()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 246
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_2:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 248
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 249
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 253
    :cond_1
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_3:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 255
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 256
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 258
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/ExtensibleNode;->dnAttributes()Z

    move-result p3

    invoke-static {p2, p3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Z)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 260
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 261
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 263
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 264
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-void
.end method

.method public encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/PresenceNode;)V
    .locals 0

    .line 218
    sget-object p2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_7:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 221
    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 222
    invoke-virtual {p2, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-void
.end method

.method public encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/SimpleNode;)V
    .locals 3

    .line 135
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 137
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 138
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p2

    const/4 v1, -0x2

    invoke-virtual {p2, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 140
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 142
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 143
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 145
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 147
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 148
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 150
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 151
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-void
.end method

.method public encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/TagEnum;Lorg/apache/ldap/common/filter/SubstringNode;)V
    .locals 5

    .line 159
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 161
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 162
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p2

    const/4 v1, -0x2

    invoke-virtual {p2, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 164
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p2

    check-cast p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 166
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 167
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 170
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getInitial()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getFinal()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getAny()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 173
    :cond_0
    new-instance p2, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v3, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v3}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {p2, v3}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 175
    invoke-virtual {p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    sget-object v4, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3, v4, v2}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 176
    invoke-virtual {p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 178
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getInitial()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_0:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getInitial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 182
    invoke-virtual {p2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 183
    invoke-virtual {v1, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 186
    :cond_1
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getAny()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 188
    :goto_0
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getAny()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 190
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getAny()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 193
    invoke-virtual {p2, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 194
    invoke-virtual {v1, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getFinal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 200
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_2:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {p3}, Lorg/apache/ldap/common/filter/SubstringNode;->getFinal()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p3

    check-cast p3, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 202
    invoke-virtual {p2, p3}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 203
    invoke-virtual {p3, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 206
    :cond_3
    invoke-virtual {v0, p2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 207
    invoke-virtual {p2, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 210
    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 211
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-void
.end method

.method public encodeBranchNode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/BranchNode;)V
    .locals 5

    .line 271
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 274
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/BranchNode;->isNegation()Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v4, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_2:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1, v4, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 277
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 278
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/BranchNode;->getChild()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 279
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 280
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-void

    .line 285
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/BranchNode;->isConjunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v4, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_0:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1, v4, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/BranchNode;->isDisjunction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v4, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1, v4, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 294
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 296
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p2

    .line 297
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 299
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 303
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-void
.end method
