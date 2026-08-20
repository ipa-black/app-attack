.class public Lorg/apache/ldap/server/db/gui/ASTNode;
.super Ljava/lang/Object;
.source "ASTNode.java"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# instance fields
.field private final children:Ljava/util/ArrayList;

.field private final exprNode:Lorg/apache/ldap/common/filter/ExprNode;

.field private final parent:Lorg/apache/ldap/server/db/gui/ASTNode;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/gui/ASTNode;Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    .line 45
    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->exprNode:Lorg/apache/ldap/common/filter/ExprNode;

    if-nez p1, :cond_0

    .line 49
    iput-object p0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->parent:Lorg/apache/ldap/server/db/gui/ASTNode;

    goto :goto_0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->parent:Lorg/apache/ldap/server/db/gui/ASTNode;

    .line 58
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 63
    :cond_1
    check-cast p2, Lorg/apache/ldap/common/filter/BranchNode;

    .line 64
    invoke-virtual {p2}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 65
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/filter/ExprNode;

    .line 68
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/ldap/server/db/gui/ASTNode;

    invoke-direct {v2, p0, v0}, Lorg/apache/ldap/server/db/gui/ASTNode;-><init>(Lorg/apache/ldap/server/db/gui/ASTNode;Lorg/apache/ldap/common/filter/ExprNode;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public children()Ljava/util/Enumeration;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->exprNode:Lorg/apache/ldap/common/filter/ExprNode;

    invoke-interface {v0}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/tree/TreeNode;

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExprNode()Lorg/apache/ldap/common/filter/ExprNode;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->exprNode:Lorg/apache/ldap/common/filter/ExprNode;

    return-object v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getParent()Ljavax/swing/tree/TreeNode;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->parent:Lorg/apache/ldap/server/db/gui/ASTNode;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/ASTNode;->exprNode:Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
