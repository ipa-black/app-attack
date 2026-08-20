.class final Lorg/apache/ldap/server/db/ExpressionEnumerator$2;
.super Ljava/lang/Object;
.source "ExpressionEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/IndexAssertion;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/ExpressionEnumerator;

.field private final synthetic val$children:Ljava/util/ArrayList;

.field private final synthetic val$minChild:Lorg/apache/ldap/common/filter/ExprNode;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/ExpressionEnumerator;Ljava/util/ArrayList;Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->this$0:Lorg/apache/ldap/server/db/ExpressionEnumerator;

    iput-object p2, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->val$children:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->val$minChild:Lorg/apache/ldap/common/filter/ExprNode;

    return-void
.end method


# virtual methods
.method public assertCandidate(Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 243
    :goto_0
    iget-object v2, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->val$children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 245
    :cond_0
    iget-object v2, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->val$children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/filter/ExprNode;

    .line 248
    iget-object v3, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->val$minChild:Lorg/apache/ldap/common/filter/ExprNode;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 252
    :cond_1
    iget-object v3, p0, Lorg/apache/ldap/server/db/ExpressionEnumerator$2;->this$0:Lorg/apache/ldap/server/db/ExpressionEnumerator;

    invoke-static {v3}, Lorg/apache/ldap/server/db/ExpressionEnumerator;->access$0(Lorg/apache/ldap/server/db/ExpressionEnumerator;)Lorg/apache/ldap/server/db/ExpressionEvaluator;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lorg/apache/ldap/server/db/ExpressionEvaluator;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
