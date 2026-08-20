.class public Lorg/apache/ldap/server/db/DefaultOptimizer;
.super Ljava/lang/Object;
.source "DefaultOptimizer.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Optimizer;


# static fields
.field private static final MAX:Ljava/math/BigInteger;


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 37
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/db/DefaultOptimizer;->MAX:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/db/Database;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    return-void
.end method

.method private getConjunctionScan(Lorg/apache/ldap/common/filter/BranchNode;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    .line 172
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 175
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/filter/ExprNode;

    .line 178
    invoke-virtual {p0, v2}, Lorg/apache/ldap/server/db/DefaultOptimizer;->annotate(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 179
    const-string v3, "count"

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/filter/ExprNode;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getDisjunctionScan(Lorg/apache/ldap/common/filter/BranchNode;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    .line 232
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 234
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/filter/ExprNode;

    .line 237
    invoke-virtual {p0, v2}, Lorg/apache/ldap/server/db/DefaultOptimizer;->annotate(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 238
    const-string v3, "count"

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/filter/ExprNode;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getEqualityScan(Lorg/apache/ldap/common/filter/SimpleNode;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 259
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->count(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 263
    :cond_0
    sget-object p1, Lorg/apache/ldap/server/db/DefaultOptimizer;->MAX:Ljava/math/BigInteger;

    return-object p1
.end method

.method private getFullScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/LeafNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/LeafNode;->getAttribute()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object p1

    .line 306
    invoke-interface {p1}, Lorg/apache/ldap/server/db/Index;->count()I

    move-result p1

    int-to-long v0, p1

    .line 307
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    sget-object p1, Lorg/apache/ldap/server/db/DefaultOptimizer;->MAX:Ljava/math/BigInteger;

    return-object p1
.end method

.method private getGreaterLessScan(Lorg/apache/ldap/common/filter/SimpleNode;Z)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Index;->count(Ljava/lang/Object;Z)I

    move-result p1

    int-to-long p1, p1

    .line 283
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    sget-object p1, Lorg/apache/ldap/server/db/DefaultOptimizer;->MAX:Ljava/math/BigInteger;

    return-object p1
.end method

.method private getNegationScan(Lorg/apache/ldap/common/filter/BranchNode;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/filter/ExprNode;

    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->annotate(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 206
    invoke-interface {p1}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    instance-of v0, p1, Lorg/apache/ldap/common/filter/ScopeNode;

    if-nez v0, :cond_0

    .line 208
    instance-of v0, p1, Lorg/apache/ldap/common/filter/AssertionNode;

    if-nez v0, :cond_0

    .line 209
    instance-of v0, p1, Lorg/apache/ldap/common/filter/PresenceNode;

    if-nez v0, :cond_0

    .line 211
    check-cast p1, Lorg/apache/ldap/common/filter/LeafNode;

    .line 212
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/LeafNode;->getAttribute()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Lorg/apache/ldap/server/db/Index;->count()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    iget-object p1, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->count()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private getPresenceScan(Lorg/apache/ldap/common/filter/PresenceNode;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getExistanceIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->count(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    .line 328
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 331
    :cond_0
    sget-object p1, Lorg/apache/ldap/server/db/DefaultOptimizer;->MAX:Ljava/math/BigInteger;

    return-object p1
.end method

.method private getScopeScan(Lorg/apache/ldap/common/filter/ScopeNode;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getScope()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 352
    iget-object p1, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->count()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized search scope value for filter scope node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultOptimizer;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Database;->getChildCount(Ljava/math/BigInteger;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 347
    :cond_2
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1
.end method


# virtual methods
.method public annotate(Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/apache/ldap/server/db/DefaultOptimizer;->MAX:Ljava/math/BigInteger;

    .line 79
    instance-of v1, p1, Lorg/apache/ldap/common/filter/ScopeNode;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, p1

    check-cast v1, Lorg/apache/ldap/common/filter/ScopeNode;

    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getScopeScan(Lorg/apache/ldap/common/filter/ScopeNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto/16 :goto_0

    .line 83
    :cond_0
    instance-of v1, p1, Lorg/apache/ldap/common/filter/AssertionNode;

    if-nez v1, :cond_2

    .line 91
    invoke-interface {p1}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    move-object v1, p1

    check-cast v1, Lorg/apache/ldap/common/filter/LeafNode;

    .line 95
    invoke-virtual {v1}, Lorg/apache/ldap/common/filter/LeafNode;->getAssertionType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized leaf node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getFullScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 99
    :pswitch_1
    check-cast v1, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getEqualityScan(Lorg/apache/ldap/common/filter/SimpleNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 112
    :pswitch_2
    check-cast v1, Lorg/apache/ldap/common/filter/SimpleNode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getGreaterLessScan(Lorg/apache/ldap/common/filter/SimpleNode;Z)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_3
    check-cast v1, Lorg/apache/ldap/common/filter/SimpleNode;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getGreaterLessScan(Lorg/apache/ldap/common/filter/SimpleNode;Z)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 119
    :pswitch_4
    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getFullScan(Lorg/apache/ldap/common/filter/LeafNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 115
    :pswitch_5
    check-cast v1, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getPresenceScan(Lorg/apache/ldap/common/filter/PresenceNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 102
    :pswitch_6
    check-cast v1, Lorg/apache/ldap/common/filter/SimpleNode;

    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getEqualityScan(Lorg/apache/ldap/common/filter/SimpleNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/ldap/common/filter/BranchNode;

    .line 132
    invoke-virtual {v1}, Lorg/apache/ldap/common/filter/BranchNode;->getOperator()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 144
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string v0, "Unrecognized branch node type"

    .line 144
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :pswitch_7
    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getNegationScan(Lorg/apache/ldap/common/filter/BranchNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 135
    :pswitch_8
    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getConjunctionScan(Lorg/apache/ldap/common/filter/BranchNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 141
    :pswitch_9
    invoke-direct {p0, v1}, Lorg/apache/ldap/server/db/DefaultOptimizer;->getDisjunctionScan(Lorg/apache/ldap/common/filter/BranchNode;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 150
    :goto_0
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 155
    :goto_1
    const-string v1, "count"

    invoke-interface {p1, v1, v0}, Lorg/apache/ldap/common/filter/ExprNode;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

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
