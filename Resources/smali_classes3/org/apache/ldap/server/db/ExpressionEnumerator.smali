.class public Lorg/apache/ldap/server/db/ExpressionEnumerator;
.super Ljava/lang/Object;
.source "ExpressionEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Enumerator;


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;

.field private evaluator:Lorg/apache/ldap/server/db/ExpressionEvaluator;

.field private scopeEnumerator:Lorg/apache/ldap/server/db/ScopeEnumerator;

.field private substringEnumerator:Lorg/apache/ldap/server/db/SubstringEnumerator;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/ExpressionEvaluator;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    .line 59
    iput-object p3, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->evaluator:Lorg/apache/ldap/server/db/ExpressionEvaluator;

    .line 61
    invoke-virtual {p3}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->getLeafEvaluator()Lorg/apache/ldap/server/db/LeafEvaluator;

    move-result-object p3

    .line 62
    new-instance v0, Lorg/apache/ldap/server/db/ScopeEnumerator;

    invoke-virtual {p3}, Lorg/apache/ldap/server/db/LeafEvaluator;->getScopeEvaluator()Lorg/apache/ldap/server/db/ScopeEvaluator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/ScopeEnumerator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/ScopeEvaluator;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->scopeEnumerator:Lorg/apache/ldap/server/db/ScopeEnumerator;

    .line 63
    new-instance v0, Lorg/apache/ldap/server/db/SubstringEnumerator;

    .line 64
    invoke-virtual {p3}, Lorg/apache/ldap/server/db/LeafEvaluator;->getSubstringEvaluator()Lorg/apache/ldap/server/db/SubstringEvaluator;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/ldap/server/db/SubstringEnumerator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/SubstringEvaluator;)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->substringEnumerator:Lorg/apache/ldap/server/db/SubstringEnumerator;

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/ExpressionEnumerator;)Lorg/apache/ldap/server/db/ExpressionEvaluator;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->evaluator:Lorg/apache/ldap/server/db/ExpressionEvaluator;

    return-object p0
.end method

.method private enumConj(Lorg/apache/ldap/common/filter/BranchNode;)Ljavax/naming/NamingEnumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    move v1, v0

    .line 225
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 238
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/filter/ExprNode;

    .line 239
    new-instance v1, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;-><init>(Lorg/apache/ldap/server/db/ExpressionEnumerator;Ljava/util/ArrayList;Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 265
    new-instance v0, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/filter/ExprNode;

    .line 228
    const-string v4, "count"

    invoke-interface {v3, v4}, Lorg/apache/ldap/common/filter/ExprNode;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enumDisj(Lorg/apache/ldap/common/filter/BranchNode;)Ljavax/naming/NamingEnumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljavax/naming/NamingEnumeration;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 161
    new-instance p1, Lorg/apache/ldap/server/db/DisjunctionEnumeration;

    invoke-direct {p1, v1}, Lorg/apache/ldap/server/db/DisjunctionEnumeration;-><init>([Ljavax/naming/NamingEnumeration;)V

    return-object p1

    .line 158
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private enumEquality(Lorg/apache/ldap/common/filter/SimpleNode;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1

    .line 338
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->nonIndexedScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method private enumGreater(Lorg/apache/ldap/common/filter/SimpleNode;Z)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1

    .line 313
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;Z)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1

    .line 317
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->nonIndexedScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method private enumNeg(Lorg/apache/ldap/common/filter/BranchNode;)Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChild()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChild()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/filter/LeafNode;

    .line 180
    iget-object v1, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/LeafNode;->getAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getNdnIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v0

    .line 191
    :goto_0
    new-instance v1, Lorg/apache/ldap/server/db/ExpressionEnumerator$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator$1;-><init>(Lorg/apache/ldap/server/db/ExpressionEnumerator;Lorg/apache/ldap/common/filter/BranchNode;)V

    .line 202
    new-instance p1, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;Z)V

    return-object p1
.end method

.method private enumPresence(Lorg/apache/ldap/common/filter/PresenceNode;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getExistanceIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->nonIndexedScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method private nonIndexedScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getNdnIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v0

    .line 354
    new-instance v1, Lorg/apache/ldap/server/db/ExpressionEnumerator$3;

    invoke-direct {v1, p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator$3;-><init>(Lorg/apache/ldap/server/db/ExpressionEnumerator;Lorg/apache/ldap/common/filter/LeafNode;)V

    .line 363
    new-instance p1, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    return-object p1
.end method


# virtual methods
.method public enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 80
    instance-of v0, p1, Lorg/apache/ldap/common/filter/ScopeNode;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->scopeEnumerator:Lorg/apache/ldap/server/db/ScopeEnumerator;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/ScopeEnumerator;->enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto/16 :goto_0

    .line 84
    :cond_0
    instance-of v0, p1, Lorg/apache/ldap/common/filter/AssertionNode;

    if-nez v0, :cond_2

    .line 89
    invoke-interface {p1}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/apache/ldap/common/filter/LeafNode;

    .line 93
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/LeafNode;->getAssertionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown leaf assertion"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :pswitch_0
    new-instance p1, Lorg/apache/ldap/common/NotImplementedException;

    invoke-direct {p1}, Lorg/apache/ldap/common/NotImplementedException;-><init>()V

    throw p1

    .line 96
    :pswitch_1
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumEquality(Lorg/apache/ldap/common/filter/SimpleNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 108
    :pswitch_2
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumGreater(Lorg/apache/ldap/common/filter/SimpleNode;Z)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 105
    :pswitch_3
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumGreater(Lorg/apache/ldap/common/filter/SimpleNode;Z)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object p1, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator;->substringEnumerator:Lorg/apache/ldap/server/db/SubstringEnumerator;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/db/SubstringEnumerator;->enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 111
    :pswitch_5
    check-cast p1, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumPresence(Lorg/apache/ldap/common/filter/PresenceNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 99
    :pswitch_6
    check-cast p1, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumEquality(Lorg/apache/ldap/common/filter/SimpleNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/filter/BranchNode;

    .line 124
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getOperator()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    const-string v0, "Unknown branch logical operator"

    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :pswitch_7
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumNeg(Lorg/apache/ldap/common/filter/BranchNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 127
    :pswitch_8
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumConj(Lorg/apache/ldap/common/filter/BranchNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    goto :goto_0

    .line 133
    :pswitch_9
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumDisj(Lorg/apache/ldap/common/filter/BranchNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    :goto_0
    return-object p1

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot produce enumeration on an AssertionNode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

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

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
