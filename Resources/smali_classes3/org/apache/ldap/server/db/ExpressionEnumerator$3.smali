.class final Lorg/apache/ldap/server/db/ExpressionEnumerator$3;
.super Ljava/lang/Object;
.source "ExpressionEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/IndexAssertion;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/ExpressionEnumerator;

.field private final synthetic val$node:Lorg/apache/ldap/common/filter/LeafNode;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/ExpressionEnumerator;Lorg/apache/ldap/common/filter/LeafNode;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$3;->this$0:Lorg/apache/ldap/server/db/ExpressionEnumerator;

    iput-object p2, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$3;->val$node:Lorg/apache/ldap/common/filter/LeafNode;

    return-void
.end method


# virtual methods
.method public assertCandidate(Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$3;->this$0:Lorg/apache/ldap/server/db/ExpressionEnumerator;

    invoke-static {v0}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->access$0(Lorg/apache/ldap/server/db/ExpressionEnumerator;)Lorg/apache/ldap/server/db/ExpressionEvaluator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->getLeafEvaluator()Lorg/apache/ldap/server/db/LeafEvaluator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$3;->val$node:Lorg/apache/ldap/common/filter/LeafNode;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/server/db/LeafEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1
.end method
