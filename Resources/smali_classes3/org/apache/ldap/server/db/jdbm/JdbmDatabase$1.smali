.class final Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;
.super Ljava/lang/Object;
.source "JdbmDatabase.java"

# interfaces
.implements Lorg/apache/ldap/server/db/IndexAssertion;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;

.field private final synthetic val$movedBase:Ljavax/naming/Name;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;Ljavax/naming/Name;)V
    .locals 0

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;->this$0:Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;

    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;->val$movedBase:Ljavax/naming/Name;

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

    .line 1589
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;->this$0:Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    .line 1590
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmDatabase$1;->val$movedBase:Ljavax/naming/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
