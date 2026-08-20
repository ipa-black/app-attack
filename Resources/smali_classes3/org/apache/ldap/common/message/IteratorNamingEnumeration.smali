.class public Lorg/apache/ldap/common/message/IteratorNamingEnumeration;
.super Ljava/lang/Object;
.source "IteratorNamingEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final m_iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;->m_iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;->m_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;->m_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;->m_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;->m_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
