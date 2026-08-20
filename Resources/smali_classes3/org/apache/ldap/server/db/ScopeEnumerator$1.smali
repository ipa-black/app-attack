.class final Lorg/apache/ldap/server/db/ScopeEnumerator$1;
.super Ljava/lang/Object;
.source "ScopeEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/IndexAssertion;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/ScopeEnumerator;

.field private final synthetic val$node:Lorg/apache/ldap/common/filter/ScopeNode;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/ScopeEnumerator;Lorg/apache/ldap/common/filter/ScopeNode;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/ScopeEnumerator$1;->this$0:Lorg/apache/ldap/server/db/ScopeEnumerator;

    iput-object p2, p0, Lorg/apache/ldap/server/db/ScopeEnumerator$1;->val$node:Lorg/apache/ldap/common/filter/ScopeNode;

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

    .line 169
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator$1;->this$0:Lorg/apache/ldap/server/db/ScopeEnumerator;

    invoke-static {v0}, Lorg/apache/ldap/server/db/ScopeEnumerator;->access$1(Lorg/apache/ldap/server/db/ScopeEnumerator;)Lorg/apache/ldap/server/db/ScopeEvaluator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/db/ScopeEnumerator$1;->val$node:Lorg/apache/ldap/common/filter/ScopeNode;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/server/db/ScopeEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1
.end method
