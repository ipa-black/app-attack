.class Lorg/apache/ldap/server/db/ScopeEnumerator$AssertNotAlias;
.super Ljava/lang/Object;
.source "ScopeEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/IndexAssertion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/db/ScopeEnumerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssertNotAlias"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/ScopeEnumerator;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/ScopeEnumerator;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/db/ScopeEnumerator$AssertNotAlias;->this$0:Lorg/apache/ldap/server/db/ScopeEnumerator;

    return-void
.end method


# virtual methods
.method public assertCandidate(Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/ldap/server/db/ScopeEnumerator$AssertNotAlias;->this$0:Lorg/apache/ldap/server/db/ScopeEnumerator;

    invoke-static {v0}, Lorg/apache/ldap/server/db/ScopeEnumerator;->access$0(Lorg/apache/ldap/server/db/ScopeEnumerator;)Lorg/apache/ldap/server/db/Database;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getAliasIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/db/Index;->reverseLookup(Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
