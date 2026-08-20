.class public Lorg/apache/ldap/server/db/ExpressionEvaluator;
.super Ljava/lang/Object;
.source "ExpressionEvaluator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Evaluator;


# instance fields
.field private leafEvaluator:Lorg/apache/ldap/server/db/LeafEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V
    .locals 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v4, Lorg/apache/ldap/server/db/ScopeEvaluator;

    invoke-direct {v4, p1}, Lorg/apache/ldap/server/db/ScopeEvaluator;-><init>(Lorg/apache/ldap/server/db/Database;)V

    .line 74
    new-instance v5, Lorg/apache/ldap/server/db/SubstringEvaluator;

    invoke-direct {v5, p1, p2, p3}, Lorg/apache/ldap/server/db/SubstringEvaluator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    .line 76
    new-instance v6, Lorg/apache/ldap/server/db/LeafEvaluator;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 77
    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/server/db/LeafEvaluator;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/ScopeEvaluator;Lorg/apache/ldap/server/db/SubstringEvaluator;)V

    iput-object v6, p0, Lorg/apache/ldap/server/db/ExpressionEvaluator;->leafEvaluator:Lorg/apache/ldap/server/db/LeafEvaluator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/db/LeafEvaluator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/ldap/server/db/ExpressionEvaluator;->leafEvaluator:Lorg/apache/ldap/server/db/LeafEvaluator;

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEvaluator;->leafEvaluator:Lorg/apache/ldap/server/db/LeafEvaluator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/server/db/LeafEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1

    .line 108
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/ldap/common/filter/BranchNode;

    .line 110
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getOperator()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 147
    new-instance p1, Ljavax/naming/NamingException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "Unrecognized branch node operator: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getOperator()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :pswitch_0
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getChild()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getChild()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 145
    :cond_1
    new-instance p2, Ljavax/naming/NamingException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Negation has no child: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 127
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 128
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 130
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/filter/ExprNode;

    .line 132
    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 113
    :pswitch_2
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 115
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 117
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/filter/ExprNode;

    .line 119
    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeafEvaluator()Lorg/apache/ldap/server/db/LeafEvaluator;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEvaluator;->leafEvaluator:Lorg/apache/ldap/server/db/LeafEvaluator;

    return-object v0
.end method
