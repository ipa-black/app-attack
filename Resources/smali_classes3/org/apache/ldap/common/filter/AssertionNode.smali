.class public Lorg/apache/ldap/common/filter/AssertionNode;
.super Lorg/apache/ldap/common/filter/AbstractExprNode;
.source "AssertionNode.java"


# static fields
.field private static final MAX:Ljava/math/BigInteger;

.field private static final MAX_STR:Ljava/lang/String;


# instance fields
.field private final m_assertion:Lorg/apache/ldap/common/filter/Assertion;

.field private final m_desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/32 v0, 0x7fffffff

    .line 46
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/filter/AssertionNode;->MAX:Ljava/math/BigInteger;

    .line 49
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/filter/AssertionNode;->MAX_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/filter/Assertion;)V
    .locals 1

    .line 69
    const-string v0, "ASSERTION"

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/AssertionNode;-><init>(Lorg/apache/ldap/common/filter/Assertion;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/filter/Assertion;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 82
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AbstractExprNode;-><init>(I)V

    .line 83
    iput-object p2, p0, Lorg/apache/ldap/common/filter/AssertionNode;->m_desc:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AssertionNode;->m_assertion:Lorg/apache/ldap/common/filter/Assertion;

    .line 91
    const-string p1, "count"

    sget-object p2, Lorg/apache/ldap/common/filter/AssertionNode;->MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/filter/AssertionNode;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 0

    .line 137
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    return-void
.end method

.method public getAssertion()Lorg/apache/ldap/common/filter/Assertion;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AssertionNode;->m_assertion:Lorg/apache/ldap/common/filter/Assertion;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AssertionNode;->m_desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v0, Lorg/apache/ldap/common/filter/AssertionNode;->MAX_STR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
