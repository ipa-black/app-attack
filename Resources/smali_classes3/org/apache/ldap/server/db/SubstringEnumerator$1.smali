.class final Lorg/apache/ldap/server/db/SubstringEnumerator$1;
.super Ljava/lang/Object;
.source "SubstringEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/IndexAssertion;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/SubstringEnumerator;

.field private final synthetic val$node:Lorg/apache/ldap/common/filter/ExprNode;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/SubstringEnumerator;Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/SubstringEnumerator$1;->this$0:Lorg/apache/ldap/server/db/SubstringEnumerator;

    iput-object p2, p0, Lorg/apache/ldap/server/db/SubstringEnumerator$1;->val$node:Lorg/apache/ldap/common/filter/ExprNode;

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

    .line 141
    iget-object v0, p0, Lorg/apache/ldap/server/db/SubstringEnumerator$1;->this$0:Lorg/apache/ldap/server/db/SubstringEnumerator;

    invoke-static {v0}, Lorg/apache/ldap/server/db/SubstringEnumerator;->access$0(Lorg/apache/ldap/server/db/SubstringEnumerator;)Lorg/apache/ldap/server/db/SubstringEvaluator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ldap/server/db/SubstringEnumerator$1;->val$node:Lorg/apache/ldap/common/filter/ExprNode;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/server/db/SubstringEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result p1

    return p1
.end method
