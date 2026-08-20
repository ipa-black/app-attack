.class Lorg/apache/ldap/common/filter/BranchNormalizedVisitor$NodeComparator;
.super Ljava/lang/Object;
.source "BranchNormalizedVisitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeComparator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor$NodeComparator;->this$0:Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    check-cast p1, Lorg/apache/ldap/common/filter/ExprNode;

    .line 154
    check-cast p2, Lorg/apache/ldap/common/filter/ExprNode;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 160
    invoke-interface {p1, v0}, Lorg/apache/ldap/common/filter/ExprNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 168
    invoke-interface {p2, v0}, Lorg/apache/ldap/common/filter/ExprNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
