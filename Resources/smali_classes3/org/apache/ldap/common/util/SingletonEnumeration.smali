.class public Lorg/apache/ldap/common/util/SingletonEnumeration;
.super Ljava/lang/Object;
.source "SingletonEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final m_element:Ljava/lang/Object;

.field private m_hasMore:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_hasMore:Z

    .line 57
    iput-object p1, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_hasMore:Z

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_hasMore:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_hasMore:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_hasMore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_hasMore:Z

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/common/util/SingletonEnumeration;->m_element:Ljava/lang/Object;

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SingletonEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
