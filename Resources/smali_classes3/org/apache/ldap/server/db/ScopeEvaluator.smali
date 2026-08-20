.class public Lorg/apache/ldap/server/db/ScopeEvaluator;
.super Ljava/lang/Object;
.source "ScopeEvaluator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Evaluator;


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    return-void
.end method


# virtual methods
.method public assertOneLevelScope(Lorg/apache/ldap/common/filter/ScopeNode;Ljava/math/BigInteger;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1}, Lorg/apache/ldap/server/db/Database;->getHierarchyIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v1

    .line 167
    invoke-interface {v1, p1, p2}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result v1

    .line 174
    invoke-virtual {v0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->derefInSearching()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 185
    invoke-interface {v0, p2}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getOneAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 210
    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result p1

    return p1
.end method

.method public assertSubtreeScope(Lorg/apache/ldap/common/filter/ScopeNode;Ljava/math/BigInteger;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0, p2}, Lorg/apache/ldap/server/db/Database;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    .line 108
    invoke-virtual {v1}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->derefInSearching()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 119
    invoke-interface {v0, p2}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_2
    iget-object p1, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->getSubAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object p1

    .line 147
    invoke-interface {p1, v2, p2}, Lorg/apache/ldap/server/db/Index;->hasValue(Ljava/lang/Object;Ljava/math/BigInteger;)Z

    move-result p1

    return p1
.end method

.method public evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 68
    check-cast p1, Lorg/apache/ldap/common/filter/ScopeNode;

    .line 70
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getScope()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/db/ScopeEvaluator;->assertSubtreeScope(Lorg/apache/ldap/common/filter/ScopeNode;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    .line 80
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string p2, "Unrecognized search scope!"

    invoke-direct {p1, p2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/db/ScopeEvaluator;->assertOneLevelScope(Lorg/apache/ldap/common/filter/ScopeNode;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    .line 73
    :cond_2
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/ldap/server/db/Database;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
