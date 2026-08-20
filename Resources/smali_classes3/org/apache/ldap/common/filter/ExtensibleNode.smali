.class public Lorg/apache/ldap/common/filter/ExtensibleNode;
.super Lorg/apache/ldap/common/filter/LeafNode;
.source "ExtensibleNode.java"


# instance fields
.field private m_dnAttributes:Z

.field private final m_matchingRuleId:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x6

    .line 58
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/LeafNode;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p2, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->value:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->m_matchingRuleId:Ljava/lang/String;

    .line 62
    iput-boolean p4, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->m_dnAttributes:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 1

    .line 146
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_0
    return-void
.end method

.method public dnAttributes()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->m_dnAttributes:Z

    return v0
.end method

.method public getMatchingRuleId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->m_matchingRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x28

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-boolean v1, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->m_dnAttributes:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "-EXTENSIBLE-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v1, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->m_matchingRuleId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v0, p0, Lorg/apache/ldap/common/filter/ExtensibleNode;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/ExtensibleNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/ExtensibleNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
