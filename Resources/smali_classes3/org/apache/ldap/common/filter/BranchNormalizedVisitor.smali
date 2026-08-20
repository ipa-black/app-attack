.class public Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;
.super Ljava/lang/Object;
.source "BranchNormalizedVisitor.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/FilterVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/common/filter/BranchNormalizedVisitor$NodeComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNormalizedFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/apache/ldap/common/filter/FilterParserImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/filter/FilterParserImpl;-><init>()V

    .line 119
    invoke-virtual {v0, p0}, Lorg/apache/ldap/common/filter/FilterParserImpl;->parse(Ljava/lang/String;)Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object p0

    .line 121
    invoke-static {p0}, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;->getNormalizedFilter(Lorg/apache/ldap/common/filter/ExprNode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalizedFilter(Lorg/apache/ldap/common/filter/ExprNode;)Ljava/lang/String;
    .locals 1

    .line 134
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;

    invoke-direct {v0}, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;-><init>()V

    .line 136
    invoke-virtual {v0, p0}, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    invoke-interface {p0, v0}, Lorg/apache/ldap/common/filter/ExprNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z
    .locals 0

    .line 85
    instance-of p1, p1, Lorg/apache/ldap/common/filter/BranchNode;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOrder(Lorg/apache/ldap/common/filter/BranchNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    return-object p2
.end method

.method public isPrefix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public visit(Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 4

    .line 47
    instance-of v0, p1, Lorg/apache/ldap/common/filter/BranchNode;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    check-cast p1, Lorg/apache/ldap/common/filter/BranchNode;

    .line 54
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getOperator()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    return-void

    .line 59
    :cond_1
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor$NodeComparator;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor$NodeComparator;-><init>(Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;)V

    .line 61
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 63
    invoke-virtual {p1}, Lorg/apache/ldap/common/filter/BranchNode;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/filter/ExprNode;

    .line 69
    invoke-interface {v2}, Lorg/apache/ldap/common/filter/ExprNode;->isLeaf()Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 74
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
