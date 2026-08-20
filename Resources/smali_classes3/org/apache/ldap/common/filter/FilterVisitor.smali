.class public interface abstract Lorg/apache/ldap/common/filter/FilterVisitor;
.super Ljava/lang/Object;
.source "FilterVisitor.java"


# virtual methods
.method public abstract canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z
.end method

.method public abstract getOrder(Lorg/apache/ldap/common/filter/BranchNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public abstract isPrefix()Z
.end method

.method public abstract visit(Lorg/apache/ldap/common/filter/ExprNode;)V
.end method
