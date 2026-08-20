.class public Lorg/apache/ldap/common/filter/ScopeNode;
.super Lorg/apache/ldap/common/filter/AbstractExprNode;
.source "ScopeNode.java"


# instance fields
.field private final baseDn:Ljava/lang/String;

.field private final derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

.field private final scope:I


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x7

    .line 72
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AbstractExprNode;-><init>(I)V

    .line 73
    iput p3, p0, Lorg/apache/ldap/common/filter/ScopeNode;->scope:I

    .line 74
    iput-object p2, p0, Lorg/apache/ldap/common/filter/ScopeNode;->baseDn:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getEnum(Ljava/util/Map;)Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/filter/ScopeNode;->derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/message/DerefAliasesEnum;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x7

    .line 55
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AbstractExprNode;-><init>(I)V

    .line 56
    iput p3, p0, Lorg/apache/ldap/common/filter/ScopeNode;->scope:I

    .line 57
    iput-object p2, p0, Lorg/apache/ldap/common/filter/ScopeNode;->baseDn:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lorg/apache/ldap/common/filter/ScopeNode;->derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 1

    .line 168
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_0
    return-void
.end method

.method public getBaseDn()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/ldap/common/filter/ScopeNode;->baseDn:Ljava/lang/String;

    return-object v0
.end method

.method public getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/common/filter/ScopeNode;->derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-object v0
.end method

.method public getScope()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/ldap/common/filter/ScopeNode;->scope:I

    return v0
.end method

.method public isLeaf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 131
    iget v0, p0, Lorg/apache/ldap/common/filter/ScopeNode;->scope:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 149
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    :cond_0
    const-string v0, "SUBTREE_SCOPE (Estimated)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "ONELEVEL_SCOPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "OBJECT_SCOPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/ScopeNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/ScopeNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x5d

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method
