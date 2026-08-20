.class public Lorg/apache/ldap/server/db/ScopeEnumerator;
.super Ljava/lang/Object;
.source "ScopeEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Enumerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/db/ScopeEnumerator$AssertDescendant;,
        Lorg/apache/ldap/server/db/ScopeEnumerator$AssertNotAlias;
    }
.end annotation


# instance fields
.field private db:Lorg/apache/ldap/server/db/Database;

.field private evaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/ScopeEvaluator;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    .line 47
    iput-object p2, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->evaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/ScopeEnumerator;)Lorg/apache/ldap/server/db/Database;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    return-object p0
.end method

.method static synthetic access$1(Lorg/apache/ldap/server/db/ScopeEnumerator;)Lorg/apache/ldap/server/db/ScopeEvaluator;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->evaluator:Lorg/apache/ldap/server/db/ScopeEvaluator;

    return-object p0
.end method

.method private enumerateChildren(Ljava/lang/String;Z)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getHierarchyIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    .line 99
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v0

    if-nez p2, :cond_0

    return-object v0

    .line 122
    :cond_0
    iget-object p2, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p2}, Lorg/apache/ldap/server/db/Database;->getOneAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object p2

    .line 123
    invoke-interface {p2, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Ljava/lang/Object;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    .line 126
    new-instance p2, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    .line 127
    new-instance v1, Lorg/apache/ldap/server/db/ScopeEnumerator$AssertNotAlias;

    invoke-direct {v1, p0}, Lorg/apache/ldap/server/db/ScopeEnumerator$AssertNotAlias;-><init>(Lorg/apache/ldap/server/db/ScopeEnumerator;)V

    .line 126
    invoke-direct {p2, v0, v1}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    const/4 v0, 0x2

    .line 130
    new-array v0, v0, [Ljavax/naming/NamingEnumeration;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 131
    new-instance p1, Lorg/apache/ldap/server/db/DisjunctionEnumeration;

    invoke-direct {p1, v0}, Lorg/apache/ldap/server/db/DisjunctionEnumeration;-><init>([Ljavax/naming/NamingEnumeration;)V

    return-object p1
.end method

.method private enumerateDescendants(Lorg/apache/ldap/common/filter/ScopeNode;)Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->derefInSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getNdnIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v0

    .line 159
    new-instance v1, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    .line 160
    new-instance v2, Lorg/apache/ldap/server/db/ScopeEnumerator$AssertDescendant;

    invoke-direct {v2, p0, p1}, Lorg/apache/ldap/server/db/ScopeEnumerator$AssertDescendant;-><init>(Lorg/apache/ldap/server/db/ScopeEnumerator;Lorg/apache/ldap/common/filter/ScopeNode;)V

    .line 159
    invoke-direct {v1, v0, v2}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    return-object v1

    .line 164
    :cond_0
    new-instance v0, Lorg/apache/ldap/server/db/ScopeEnumerator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/db/ScopeEnumerator$1;-><init>(Lorg/apache/ldap/server/db/ScopeEnumerator;Lorg/apache/ldap/common/filter/ScopeNode;)V

    .line 174
    iget-object p1, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->getNdnIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    .line 176
    new-instance v1, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    invoke-direct {v1, p1, v0}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    return-object v1
.end method


# virtual methods
.method public enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 62
    check-cast p1, Lorg/apache/ldap/common/filter/ScopeNode;

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getEntryId(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getScope()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/db/ScopeEnumerator;->enumerateDescendants(Lorg/apache/ldap/common/filter/ScopeNode;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljavax/naming/NamingException;

    const-string v0, "Unrecognized search scope!"

    invoke-direct {p1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->derefInSearching()Z

    move-result p1

    .line 73
    invoke-direct {p0, v0, p1}, Lorg/apache/ldap/server/db/ScopeEnumerator;->enumerateChildren(Ljava/lang/String;Z)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1

    .line 68
    :cond_2
    new-instance v1, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v1}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    .line 69
    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/db/IndexRecord;->setEntryId(Ljava/math/BigInteger;)V

    .line 70
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/ScopeNode;->getBaseDn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/ldap/server/db/IndexRecord;->setIndexKey(Ljava/lang/Object;)V

    .line 71
    new-instance p1, Lorg/apache/ldap/common/util/SingletonEnumeration;

    invoke-direct {p1, v1}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
