.class public Lorg/apache/ldap/common/filter/SimpleNode;
.super Lorg/apache/ldap/common/filter/LeafNode;
.source "SimpleNode.java"


# instance fields
.field private final m_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p3}, Lorg/apache/ldap/common/filter/LeafNode;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p2, p0, Lorg/apache/ldap/common/filter/SimpleNode;->m_value:Ljava/lang/String;

    packed-switch p3, :pswitch_data_0

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute value assertion type is undefined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Assertion type supplied is extensible.  Use ExtensibleNode instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Assertion type supplied is substring.  Use SubstringNode instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Assertion type supplied is presence.  Use PresenceNode instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 1

    .line 167
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_0
    return-void
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SimpleNode;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x28

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SimpleNode;->getAssertionType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 128
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "~="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "<="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, ">="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SimpleNode;->m_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SimpleNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SimpleNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5b

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SimpleNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/16 v0, 0x20

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/SimpleNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
