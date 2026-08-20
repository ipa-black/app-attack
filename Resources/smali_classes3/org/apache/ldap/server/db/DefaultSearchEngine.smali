.class public Lorg/apache/ldap/server/db/DefaultSearchEngine;
.super Ljava/lang/Object;
.source "DefaultSearchEngine.java"

# interfaces
.implements Lorg/apache/ldap/server/db/SearchEngine;


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;

.field private enumerator:Lorg/apache/ldap/server/db/ExpressionEnumerator;

.field private evaluator:Lorg/apache/ldap/server/db/ExpressionEvaluator;

.field private final optimizer:Lorg/apache/ldap/server/db/Optimizer;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/ExpressionEvaluator;Lorg/apache/ldap/server/db/ExpressionEnumerator;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->db:Lorg/apache/ldap/server/db/Database;

    .line 68
    iput-object p2, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->evaluator:Lorg/apache/ldap/server/db/ExpressionEvaluator;

    .line 69
    iput-object p3, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->enumerator:Lorg/apache/ldap/server/db/ExpressionEnumerator;

    .line 70
    new-instance p2, Lorg/apache/ldap/server/db/DefaultOptimizer;

    invoke-direct {p2, p1}, Lorg/apache/ldap/server/db/DefaultOptimizer;-><init>(Lorg/apache/ldap/server/db/Database;)V

    iput-object p2, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->optimizer:Lorg/apache/ldap/server/db/Optimizer;

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/ldap/common/filter/ExprNode;Ljava/math/BigInteger;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    .line 148
    invoke-virtual {v0, p2}, Lorg/apache/ldap/server/db/IndexRecord;->setEntryId(Ljava/math/BigInteger;)V

    .line 149
    iget-object p2, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->evaluator:Lorg/apache/ldap/server/db/ExpressionEvaluator;

    invoke-virtual {p2, p1, v0}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1
.end method

.method public getOptimizer()Lorg/apache/ldap/server/db/Optimizer;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->optimizer:Lorg/apache/ldap/server/db/Optimizer;

    return-object v0
.end method

.method public search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1}, Lorg/apache/ldap/server/db/Database;->getAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-static {p2}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getEnum(Ljava/util/Map;)Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v1}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->derefFindingBase()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 119
    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(I)V

    .line 131
    new-instance v1, Lorg/apache/ldap/common/filter/ScopeNode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p4}, Ljavax/naming/directory/SearchControls;->getSearchScope()I

    move-result p4

    .line 131
    invoke-direct {v1, p2, p1, p4}, Lorg/apache/ldap/common/filter/ScopeNode;-><init>(Ljava/util/Map;Ljava/lang/String;I)V

    .line 133
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->optimizer:Lorg/apache/ldap/server/db/Optimizer;

    invoke-interface {p1, v0}, Lorg/apache/ldap/server/db/Optimizer;->annotate(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 138
    iget-object p1, p0, Lorg/apache/ldap/server/db/DefaultSearchEngine;->enumerator:Lorg/apache/ldap/server/db/ExpressionEnumerator;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method
