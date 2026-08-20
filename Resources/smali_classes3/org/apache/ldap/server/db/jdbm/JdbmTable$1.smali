.class final Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;
.super Ljava/lang/Object;
.source "JdbmTable.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

.field private final synthetic val$list:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/db/jdbm/JdbmTable;Ljava/util/Iterator;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;->this$0:Lorg/apache/ldap/server/db/jdbm/JdbmTable;

    iput-object p2, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;->val$list:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;->val$list:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;->val$list:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;->val$list:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/apache/ldap/server/db/jdbm/JdbmTable$1;->val$list:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
