.class public final Lorg/apache/ldap/common/filter/PresenceNode;
.super Lorg/apache/ldap/common/filter/LeafNode;
.source "PresenceNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/LeafNode;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 1

    .line 91
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_0
    return-void
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x28

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/PresenceNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/PresenceNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/PresenceNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/PresenceNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
