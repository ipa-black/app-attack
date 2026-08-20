.class public Lorg/apache/asn1/ber/digester/TagTree;
.super Ljava/lang/Object;
.source "TagTree.java"


# static fields
.field public static final WILDCARD:I = 0x1fffffff


# instance fields
.field private normNodes:Ljava/util/HashMap;

.field private normRegistrations:Ljava/util/ArrayList;

.field private wildNodes:Ljava/util/HashMap;

.field private wildRegistrations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->normRegistrations:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildRegistrations:Ljava/util/ArrayList;

    return-void
.end method

.method private addNormalRule([ILorg/apache/asn1/ber/digester/Rule;)V
    .locals 5

    .line 93
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 95
    const-string v1, "cannot add null rule"

    invoke-static {p2, v1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-string v1, "cannot add rule with null pattern"

    invoke-static {p1, v1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "cannot add rule with empty pattern"

    invoke-static {v1, v4}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/Integer;

    aget v2, p1, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 101
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/digester/TagNode;

    .line 104
    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    :cond_1
    new-instance v2, Lorg/apache/asn1/ber/digester/TagNode;

    invoke-direct {v2, v1}, Lorg/apache/asn1/ber/digester/TagNode;-><init>(Ljava/lang/Integer;)V

    .line 109
    iget-object v4, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v2}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-direct {p0, v2, v0}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRulesToNewNormalNode(Lorg/apache/asn1/ber/digester/TagNode;Ljava/util/Stack;)V

    move-object v1, v2

    .line 114
    :goto_1
    array-length v2, p1

    if-ge v3, v2, :cond_3

    .line 116
    new-instance v2, Ljava/lang/Integer;

    aget v4, p1, v3

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 117
    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/digester/TagNode;->getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v4

    if-nez v4, :cond_2

    .line 121
    new-instance v4, Lorg/apache/asn1/ber/digester/TagNode;

    invoke-direct {v4, v2}, Lorg/apache/asn1/ber/digester/TagNode;-><init>(Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {v1, v4}, Lorg/apache/asn1/ber/digester/TagNode;->addNode(Lorg/apache/asn1/ber/digester/TagNode;)V

    .line 123
    invoke-virtual {v4}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0, v4, v0}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRulesToNewNormalNode(Lorg/apache/asn1/ber/digester/TagNode;Ljava/util/Stack;)V

    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {v4}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v1, p2}, Lorg/apache/asn1/ber/digester/TagNode;->addRule(Lorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addWildRule([ILorg/apache/asn1/ber/digester/Rule;)V
    .locals 5

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Attempting to register rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " with null pattern"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " with zero length pattern"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 153
    aget v0, p1, v2

    const v1, 0x1fffffff

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "Expected rule "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " pattern to have front wild card but it did not"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 156
    array-length v0, p1

    if-le v0, v3, :cond_2

    move v2, v3

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot register only wild card \"*\" pattern for rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/digester/TagNode;

    .line 169
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-direct {p0, p1, p2, v2, v1}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRuleToNormalTree([ILorg/apache/asn1/ber/digester/Rule;Ljava/util/Stack;Lorg/apache/asn1/ber/digester/TagNode;)V

    goto :goto_2

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/Integer;

    array-length v1, p1

    sub-int/2addr v1, v3

    aget v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 177
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    goto :goto_3

    .line 183
    :cond_4
    new-instance v1, Lorg/apache/asn1/ber/digester/TagNode;

    invoke-direct {v1, v0}, Lorg/apache/asn1/ber/digester/TagNode;-><init>(Ljava/lang/Integer;)V

    .line 184
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 187
    :goto_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    :goto_4
    if-lt v1, v3, :cond_6

    .line 189
    new-instance v2, Ljava/lang/Integer;

    aget v4, p1, v1

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 190
    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/digester/TagNode;->getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v4

    if-nez v4, :cond_5

    .line 194
    new-instance v4, Lorg/apache/asn1/ber/digester/TagNode;

    invoke-direct {v4, v2}, Lorg/apache/asn1/ber/digester/TagNode;-><init>(Ljava/lang/Integer;)V

    .line 195
    invoke-virtual {v0, v4}, Lorg/apache/asn1/ber/digester/TagNode;->addNode(Lorg/apache/asn1/ber/digester/TagNode;)V

    :cond_5
    move-object v0, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 206
    :cond_6
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/digester/TagNode;

    .line 210
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-direct {p0, p1, p2, v2, v1}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRuleToWildTree([ILorg/apache/asn1/ber/digester/Rule;Ljava/util/Stack;Lorg/apache/asn1/ber/digester/TagNode;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method private addWildRuleToNormalTree([ILorg/apache/asn1/ber/digester/Rule;Ljava/util/Stack;Lorg/apache/asn1/ber/digester/TagNode;)V
    .locals 1

    .line 329
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-direct {p0, p1, p3}, Lorg/apache/asn1/ber/digester/TagTree;->isTailMatch([ILjava/util/Stack;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p4, p2}, Lorg/apache/asn1/ber/digester/TagNode;->addRule(Lorg/apache/asn1/ber/digester/Rule;)V

    .line 339
    :cond_0
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->getChildren()Ljava/util/Iterator;

    move-result-object p4

    .line 342
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRuleToNormalTree([ILorg/apache/asn1/ber/digester/Rule;Ljava/util/Stack;Lorg/apache/asn1/ber/digester/TagNode;)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private addWildRuleToWildTree([ILorg/apache/asn1/ber/digester/Rule;Ljava/util/Stack;Lorg/apache/asn1/ber/digester/TagNode;)V
    .locals 1

    .line 254
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->getTag()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0, p1, p3}, Lorg/apache/asn1/ber/digester/TagTree;->isReverseTailMatch([ILjava/util/Stack;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p4, p2}, Lorg/apache/asn1/ber/digester/TagNode;->addRule(Lorg/apache/asn1/ber/digester/Rule;)V

    .line 264
    :cond_0
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p4}, Lorg/apache/asn1/ber/digester/TagNode;->getChildren()Ljava/util/Iterator;

    move-result-object p4

    .line 267
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRuleToWildTree([ILorg/apache/asn1/ber/digester/Rule;Ljava/util/Stack;Lorg/apache/asn1/ber/digester/TagNode;)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private addWildRulesToNewNormalNode(Lorg/apache/asn1/ber/digester/TagNode;Ljava/util/Stack;)V
    .locals 3

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildRegistrations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildRegistrations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/digester/RuleRegistration;

    .line 229
    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/RuleRegistration;->getPattern()[I

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/asn1/ber/digester/TagTree;->isTailMatch([ILjava/util/Stack;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v1}, Lorg/apache/asn1/ber/digester/RuleRegistration;->getRule()Lorg/apache/asn1/ber/digester/Rule;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/asn1/ber/digester/TagNode;->addRule(Lorg/apache/asn1/ber/digester/Rule;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getNormalNode(Lorg/apache/commons/collections/primitives/IntStack;)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 5

    .line 447
    const-string v0, "cannot match using null pattern"

    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->empty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "cannot match with empty pattern"

    invoke-static {v0, v2}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/primitives/IntStack;->get(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 451
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    .line 460
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 462
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/primitives/IntStack;->get(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 463
    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/digester/TagNode;->getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object v3
.end method

.method private getNormalNode([I)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 5

    .line 483
    const-string v0, "cannot match using null pattern"

    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "cannot match with empty pattern"

    invoke-static {v0, v3}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/Integer;

    aget v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 488
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 490
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->normNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    .line 497
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 499
    new-instance v1, Ljava/lang/Integer;

    aget v4, p1, v2

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 500
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/TagNode;->getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object v3
.end method

.method private getWildNode(Lorg/apache/commons/collections/primitives/IntStack;)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 4

    .line 588
    const-string v0, "cannot match using null pattern"

    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->empty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "cannot match with empty pattern"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/primitives/IntStack;->get(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 596
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    .line 609
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_1

    .line 611
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/primitives/IntStack;->get(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 612
    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/digester/TagNode;->getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getWildNode([I)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 4

    .line 529
    const-string v0, "cannot match using null pattern"

    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    array-length v0, p1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "cannot match with empty pattern"

    invoke-static {v0, v2}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/Integer;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget v1, p1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 539
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildNodes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/digester/TagNode;

    .line 552
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    :goto_1
    if-ltz v1, :cond_2

    .line 554
    new-instance v2, Ljava/lang/Integer;

    aget v3, p1, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 555
    invoke-virtual {v0, v2}, Lorg/apache/asn1/ber/digester/TagNode;->getChild(Ljava/lang/Integer;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    move-object v0, v2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private isReverseTailMatch([ILjava/util/Stack;)Z
    .locals 6

    .line 294
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    return v3

    .line 299
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    move v1, v3

    :goto_0
    if-lt v0, v2, :cond_2

    .line 301
    aget v4, p1, v0

    invoke-virtual {p2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isTailMatch([ILjava/util/Stack;)Z
    .locals 6

    .line 367
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    return v3

    .line 372
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v0, v2, :cond_2

    .line 375
    aget v4, p1, v0

    invoke-virtual {p2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public addRule([ILorg/apache/asn1/ber/digester/Rule;)V
    .locals 2

    const/4 v0, 0x0

    .line 70
    aget v0, p1, v0

    const v1, 0x1fffffff

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->wildRegistrations:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/asn1/ber/digester/RuleRegistration;

    invoke-direct {v1, p1, p2}, Lorg/apache/asn1/ber/digester/RuleRegistration;-><init>([ILorg/apache/asn1/ber/digester/Rule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/asn1/ber/digester/TagTree;->addWildRule([ILorg/apache/asn1/ber/digester/Rule;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/TagTree;->normRegistrations:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/asn1/ber/digester/RuleRegistration;

    invoke-direct {v1, p1, p2}, Lorg/apache/asn1/ber/digester/RuleRegistration;-><init>([ILorg/apache/asn1/ber/digester/Rule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/asn1/ber/digester/TagTree;->addNormalRule([ILorg/apache/asn1/ber/digester/Rule;)V

    :goto_0
    return-void
.end method

.method public getNode(Lorg/apache/commons/collections/primitives/IntStack;)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 1

    .line 405
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->getNormalNode(Lorg/apache/commons/collections/primitives/IntStack;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->getWildNode(Lorg/apache/commons/collections/primitives/IntStack;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNode([I)Lorg/apache/asn1/ber/digester/TagNode;
    .locals 1

    .line 431
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->getNormalNode([I)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->getWildNode([I)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->getNode(Lorg/apache/commons/collections/primitives/IntStack;)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 396
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 399
    :cond_0
    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/TagNode;->getRules()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public match([I)Ljava/util/List;
    .locals 0

    .line 418
    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/digester/TagTree;->getNode([I)Lorg/apache/asn1/ber/digester/TagNode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 422
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 425
    :cond_0
    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/TagNode;->getRules()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
