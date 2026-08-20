.class public Lorg/apache/ldap/server/db/NoDupsEnumeration;
.super Ljava/lang/Object;
.source "NoDupsEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final browser:Lorg/apache/ldap/server/db/TupleBrowser;

.field private final doAscendingScan:Z

.field private hasNext:Z

.field private final prefetched:Lorg/apache/ldap/server/db/Tuple;

.field private final returned:Lorg/apache/ldap/server/db/Tuple;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/TupleBrowser;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    .line 43
    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasNext:Z

    .line 67
    iput-object p1, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->browser:Lorg/apache/ldap/server/db/TupleBrowser;

    .line 68
    iput-boolean p2, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->doAscendingScan:Z

    .line 69
    invoke-direct {p0}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetch()V

    return-void
.end method

.method private prefetch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->doAscendingScan:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->browser:Lorg/apache/ldap/server/db/TupleBrowser;

    iget-object v1, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/TupleBrowser;->getNext(Lorg/apache/ldap/server/db/Tuple;)Z

    move-result v0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->browser:Lorg/apache/ldap/server/db/TupleBrowser;

    iget-object v1, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/TupleBrowser;->getPrevious(Lorg/apache/ldap/server/db/Tuple;)Z

    move-result v0

    .line 182
    :goto_0
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasNext:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasNext:Z

    return-void
.end method

.method doAscendingScan()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->doAscendingScan:Z

    return v0
.end method

.method public hasMore()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasNext:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetched:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->prefetch()V

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/db/NoDupsEnumeration;->returned:Lorg/apache/ldap/server/db/Tuple;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/db/NoDupsEnumeration;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
