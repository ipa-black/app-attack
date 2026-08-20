.class public Lorg/apache/ldap/server/db/LeafEvaluator;
.super Ljava/lang/Object;
.source "LeafEvaluator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Evaluator;


# static fields
.field private static final EQUALITY_MATCH:I = 0x0

.field private static final ORDERING_MATCH:I = 0x1

.field private static final SUBSTRING_MATCH:I = 0x3


# instance fields
.field private attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field private db:Lorg/apache/ldap/server/db/Database;

.field private oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

.field private scopeEvaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;

.field private substringEvaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/ScopeEvaluator;Lorg/apache/ldap/server/db/SubstringEvaluator;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    .line 77
    iput-object p2, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    .line 78
    iput-object p3, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    .line 79
    iput-object p4, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->scopeEvaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;

    .line 80
    iput-object p5, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->substringEvaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;

    return-void
.end method

.method private evalEquality(Lorg/apache/ldap/common/filter/SimpleNode;Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    .line 273
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->getNormalizer(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/LeafEvaluator;->getComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v1

    .line 285
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v2

    if-nez v2, :cond_1

    .line 287
    iget-object v2, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/ldap/server/db/IndexRecord;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 291
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_2

    return v2

    .line 300
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljavax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    return v4

    .line 306
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    .line 319
    :cond_4
    invoke-interface {p2}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 320
    :cond_5
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 322
    :cond_6
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 324
    invoke-interface {v1, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_5

    return v4
.end method

.method private evalGreater(Lorg/apache/ldap/common/filter/SimpleNode;Lorg/apache/ldap/server/db/IndexRecord;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v2, v0}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 149
    iget-object p2, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p2, v0}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 153
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1, v3}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;Z)Z

    move-result p1

    return p1

    .line 156
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1, v4}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;Z)Z

    move-result p1

    return p1

    .line 160
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v2, v1}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/db/IndexRecord;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 166
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p2

    invoke-interface {p2, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p2

    if-nez p2, :cond_3

    return v4

    .line 178
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->getNormalizer(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v1

    .line 179
    invoke-direct {p0, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->getComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 181
    invoke-interface {p2}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    if-eqz p3, :cond_6

    .line 189
    :cond_4
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    .line 191
    :cond_5
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 194
    invoke-interface {v0, p3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_4

    return v3

    .line 202
    :cond_6
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p3

    if-nez p3, :cond_7

    :goto_0
    return v4

    .line 204
    :cond_7
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 207
    invoke-interface {v0, p3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_6

    return v3
.end method

.method private evalPresence(Ljava/lang/String;Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getExistanceIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 234
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    .line 238
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/db/IndexRecord;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 244
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    return v0

    .line 251
    :cond_2
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private getComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->getMatchingRule(Ljava/lang/String;I)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    .line 345
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getComparator()Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method private getMatchingRule(Ljava/lang/String;I)Lorg/apache/ldap/common/schema/MatchingRule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 383
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown match type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_1
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getNormalizer(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->getMatchingRule(Ljava/lang/String;I)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    .line 359
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 101
    instance-of v0, p1, Lorg/apache/ldap/common/filter/ScopeNode;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->scopeEvaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/db/ScopeEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/ldap/common/filter/LeafNode;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/LeafNode;->getAssertionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    new-instance p1, Ljavax/naming/NamingException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Unrecognized leaf node type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/LeafNode;->getAssertionType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :pswitch_0
    new-instance p1, Lorg/apache/ldap/common/NotImplementedException;

    invoke-direct {p1}, Lorg/apache/ldap/common/NotImplementedException;-><init>()V

    throw p1

    .line 109
    :pswitch_1
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/db/LeafEvaluator;->evalEquality(Lorg/apache/ldap/common/filter/SimpleNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1

    .line 117
    :pswitch_2
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->evalGreater(Lorg/apache/ldap/common/filter/SimpleNode;Lorg/apache/ldap/server/db/IndexRecord;Z)Z

    move-result p1

    return p1

    .line 115
    :pswitch_3
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ldap/server/db/LeafEvaluator;->evalGreater(Lorg/apache/ldap/common/filter/SimpleNode;Lorg/apache/ldap/server/db/IndexRecord;Z)Z

    move-result p1

    return p1

    .line 122
    :pswitch_4
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->substringEvaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/db/SubstringEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1

    .line 119
    :pswitch_5
    check-cast p1, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/db/LeafEvaluator;->evalPresence(Ljava/lang/String;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1

    .line 111
    :pswitch_6
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/db/LeafEvaluator;->evalEquality(Lorg/apache/ldap/common/filter/SimpleNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScopeEvaluator()Lorg/apache/ldap/server/db/ScopeEvaluator;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->scopeEvaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;

    return-object v0
.end method

.method public getSubstringEvaluator()Lorg/apache/ldap/server/db/SubstringEvaluator;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/db/LeafEvaluator;->substringEvaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;

    return-object v0
.end method
