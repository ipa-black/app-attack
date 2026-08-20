.class public Lorg/apache/ldap/common/filter/BranchNode;
.super Lorg/apache/ldap/common/filter/AbstractExprNode;
.source "BranchNode.java"


# instance fields
.field private m_children:Ljava/util/ArrayList;

.field private final m_operator:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(ILjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/filter/AbstractExprNode;-><init>(I)V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    goto :goto_0

    .line 67
    :cond_0
    iput-object p2, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    .line 70
    :goto_0
    iput p1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    packed-switch p1, :pswitch_data_0

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Logical operator argument in constructor is undefined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getOperatorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 300
    const-string p0, "UNKNOWN"

    goto :goto_0

    .line 295
    :pswitch_0
    const-string p0, "NOT"

    goto :goto_0

    .line 292
    :pswitch_1
    const-string p0, "AND"

    goto :goto_0

    .line 298
    :pswitch_2
    const-string p0, "OR"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 3

    .line 340
    invoke-interface {p1}, Lorg/apache/ldap/common/filter/FilterVisitor;->isPrefix()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lorg/apache/ldap/common/filter/FilterVisitor;->getOrder(Lorg/apache/ldap/common/filter/BranchNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 344
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 349
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-interface {v2, p1}, Lorg/apache/ldap/common/filter/ExprNode;->accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lorg/apache/ldap/common/filter/FilterVisitor;->getOrder(Lorg/apache/ldap/common/filter/BranchNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 360
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-interface {v2, p1}, Lorg/apache/ldap/common/filter/ExprNode;->accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_2
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_3
    return-void
.end method

.method public addNode(Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 2

    const/16 v0, 0xb

    .line 108
    iget v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add more than one element to a negation node."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNodeToHead(Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 2

    const/16 v0, 0xb

    .line 128
    iget v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add more than one element to a negation node."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public getChild()Lorg/apache/ldap/common/filter/ExprNode;
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/filter/ExprNode;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    return v0
.end method

.method public isConjunction()Z
    .locals 2

    const/16 v0, 0xa

    .line 216
    iget v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisjunction()Z
    .locals 2

    const/16 v0, 0x9

    .line 205
    iget v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLeaf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isNegation()Z
    .locals 2

    const/16 v0, 0xb

    .line 227
    iget v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x28

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    iget v0, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    packed-switch v0, :pswitch_data_0

    .line 253
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 247
    :pswitch_0
    const-string v0, "! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "& "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 250
    :pswitch_2
    const-string v0, "| "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v0, 0x0

    .line 256
    :goto_1
    iget-object v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/filter/ExprNode;

    invoke-interface {v1, p1}, Lorg/apache/ldap/common/filter/ExprNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0x29

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/BranchNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/BranchNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5b

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/BranchNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const/16 v0, 0x20

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setChildren(Ljava/util/ArrayList;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_children:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    iget v1, p0, Lorg/apache/ldap/common/filter/BranchNode;->m_operator:I

    invoke-static {v1}, Lorg/apache/ldap/common/filter/BranchNode;->getOperatorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/BranchNode;->getAnnotations()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/BranchNode;->getAnnotations()Ljava/util/Map;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/BranchNode;->getAnnotations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
