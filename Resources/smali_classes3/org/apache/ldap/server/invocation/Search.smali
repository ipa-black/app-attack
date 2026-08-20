.class public Lorg/apache/ldap/server/invocation/Search;
.super Lorg/apache/ldap/server/invocation/Invocation;
.source "Search.java"


# static fields
.field private static final serialVersionUID:J = 0x2d38333937313733L


# instance fields
.field private baseName:Ljavax/naming/Name;

.field private final controls:Ljavax/naming/directory/SearchControls;

.field private final environment:Ljava/util/Map;

.field private final filter:Lorg/apache/ldap/common/filter/ExprNode;


# direct methods
.method public constructor <init>(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/ldap/server/invocation/Invocation;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 68
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Search;->baseName:Ljavax/naming/Name;

    .line 70
    iput-object p2, p0, Lorg/apache/ldap/server/invocation/Search;->environment:Ljava/util/Map;

    .line 72
    iput-object p3, p0, Lorg/apache/ldap/server/invocation/Search;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    .line 74
    iput-object p4, p0, Lorg/apache/ldap/server/invocation/Search;->controls:Ljavax/naming/directory/SearchControls;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "controls"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "environment"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "baseName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doExecute(Lorg/apache/ldap/server/BackingStore;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Search;->baseName:Ljavax/naming/Name;

    iget-object v1, p0, Lorg/apache/ldap/server/invocation/Search;->environment:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ldap/server/invocation/Search;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    iget-object v3, p0, Lorg/apache/ldap/server/invocation/Search;->controls:Ljavax/naming/directory/SearchControls;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/apache/ldap/server/BackingStore;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public getBaseName()Ljavax/naming/Name;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Search;->baseName:Ljavax/naming/Name;

    return-object v0
.end method

.method public getControls()Ljavax/naming/directory/SearchControls;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Search;->controls:Ljavax/naming/directory/SearchControls;

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Map;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Search;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public getFilter()Lorg/apache/ldap/common/filter/ExprNode;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/invocation/Search;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    return-object v0
.end method

.method public setBaseName(Ljavax/naming/Name;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/apache/ldap/server/invocation/Search;->baseName:Ljavax/naming/Name;

    return-void
.end method
