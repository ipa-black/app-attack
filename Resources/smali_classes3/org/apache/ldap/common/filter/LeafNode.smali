.class public abstract Lorg/apache/ldap/common/filter/LeafNode;
.super Lorg/apache/ldap/common/filter/AbstractExprNode;
.source "LeafNode.java"


# instance fields
.field private final m_attribute:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p2}, Lorg/apache/ldap/common/filter/AbstractExprNode;-><init>(I)V

    .line 50
    iput-object p1, p0, Lorg/apache/ldap/common/filter/LeafNode;->m_attribute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAttribute()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/ldap/common/filter/LeafNode;->m_attribute:Ljava/lang/String;

    return-object v0
.end method

.method public final isLeaf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
