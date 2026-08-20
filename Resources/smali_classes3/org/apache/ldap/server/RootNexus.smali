.class public Lorg/apache/ldap/server/RootNexus;
.super Ljava/lang/Object;
.source "RootNexus.java"

# interfaces
.implements Lorg/apache/ldap/server/PartitionNexus;


# static fields
.field private static final ASF:Ljava/lang/String; = "Apache Software Foundation"

.field private static final NAMINGCTXS_ATTR:Ljava/lang/String; = "namingContexts"

.field private static final VENDORNAME_ATTR:Ljava/lang/String; = "vendorName"

.field private static s_singleton:Lorg/apache/ldap/server/RootNexus;


# instance fields
.field private backends:Ljava/util/HashMap;

.field private closed:Z

.field private final rootDSE:Ljavax/naming/directory/Attributes;

.field private system:Lorg/apache/ldap/server/SystemPartition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/SystemPartition;Ljavax/naming/directory/Attributes;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/apache/ldap/server/RootNexus;->closed:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    .line 86
    sget-object v0, Lorg/apache/ldap/server/RootNexus;->s_singleton:Lorg/apache/ldap/server/RootNexus;

    if-nez v0, :cond_0

    .line 91
    sput-object p0, Lorg/apache/ldap/server/RootNexus;->s_singleton:Lorg/apache/ldap/server/RootNexus;

    .line 92
    iput-object p1, p0, Lorg/apache/ldap/server/RootNexus;->system:Lorg/apache/ldap/server/SystemPartition;

    .line 95
    iput-object p2, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    .line 96
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "subschemaSubentry"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v0, "cn=schema,ou=system"

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 100
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "supportedLDAPVersion"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 102
    const-string v0, "3"

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "objectClass"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 106
    const-string v0, "top"

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v0, "extensibleObject"

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "namingContexts"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 112
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "vendorName"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v0, "Apache Software Foundation"

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 117
    iget-object p1, p0, Lorg/apache/ldap/server/RootNexus;->system:Lorg/apache/ldap/server/SystemPartition;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/RootNexus;->register(Lorg/apache/ldap/server/ContextPartition;)V

    .line 119
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lorg/apache/ldap/server/RootNexus$1;

    invoke-direct {v0, p0}, Lorg/apache/ldap/server/RootNexus$1;-><init>(Lorg/apache/ldap/server/RootNexus;)V

    .line 136
    const-string v1, "RootNexusShutdownHook"

    .line 119
    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 598
    invoke-interface {p1}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/Name;

    .line 600
    :goto_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 602
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/ContextPartition;

    return-object p1

    .line 607
    :cond_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljavax/naming/Name;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 610
    :cond_1
    new-instance p1, Ljavax/naming/NameNotFoundException;

    invoke-direct {p1}, Ljavax/naming/NameNotFoundException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p2}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 263
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/ContextPartition;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ldap/server/RootNexus;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 534
    monitor-exit p0

    return-void

    .line 539
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 567
    sput-object v1, Lorg/apache/ldap/server/RootNexus;->s_singleton:Lorg/apache/ldap/server/RootNexus;

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lorg/apache/ldap/server/RootNexus;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 581
    monitor-exit p0

    return-void

    .line 573
    :cond_1
    :try_start_2
    const-string v0, "Encountered failures while performing a close() operation on backing stores"

    .line 575
    new-instance v1, Ljavax/naming/NamingException;

    invoke-direct {v1, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1, v2}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 579
    throw v1

    .line 545
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/server/BackingStore;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    :try_start_3
    invoke-interface {v3}, Lorg/apache/ldap/server/BackingStore;->sync()V

    .line 551
    invoke-interface {v3}, Lorg/apache/ldap/server/BackingStore;->close()V
    :try_end_3
    .catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 555
    :try_start_4
    invoke-virtual {v3}, Ljavax/naming/NamingException;->printStackTrace()V

    if-nez v2, :cond_3

    .line 559
    new-instance v2, Lorg/apache/ldap/common/MultiException;

    const-string v4, "Grouping many exceptions on root nexus close()"

    invoke-direct {v2, v4}, Lorg/apache/ldap/common/MultiException;-><init>(Ljava/lang/String;)V

    .line 563
    :cond_3
    invoke-virtual {v2, v3}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Ljavax/naming/Name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 246
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/ContextPartition;->delete(Ljavax/naming/Name;)V

    return-void
.end method

.method public getLdapContext()Ljavax/naming/ldap/LdapContext;
    .locals 1

    .line 150
    new-instance v0, Lorg/apache/ldap/common/NotImplementedException;

    invoke-direct {v0}, Lorg/apache/ldap/common/NotImplementedException;-><init>()V

    throw v0
.end method

.method public getMatchedDn(Ljavax/naming/Name;Z)Ljavax/naming/Name;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/Name;

    .line 161
    :goto_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result p2

    if-gtz p2, :cond_0

    return-object p1

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/server/RootNexus;->hasEntry(Ljavax/naming/Name;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    const/4 p2, 0x1

    .line 168
    invoke-interface {p1, p2}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object p1

    goto :goto_0
.end method

.method public getRootDSE()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getSuffix(Ljavax/naming/Name;Z)Ljavax/naming/Name;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object p1

    .line 182
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/ContextPartition;->getSuffix(Z)Ljavax/naming/Name;

    move-result-object p1

    return-object p1
.end method

.method public hasEntry(Ljavax/naming/Name;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 421
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 426
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 428
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/ContextPartition;->hasEntry(Ljavax/naming/Name;)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lorg/apache/ldap/server/RootNexus;->closed:Z

    return v0
.end method

.method public isSuffix(Ljavax/naming/Name;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 297
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/ContextPartition;->list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public listSuffixes(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 191
    iget-object p1, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 370
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object p1, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/message/LockableAttributes;

    const/4 v0, 0x1

    .line 374
    invoke-interface {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributes;->setLocked(Z)V

    return-object p1

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 381
    invoke-interface {v0, p1}, Lorg/apache/ldap/server/ContextPartition;->lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 390
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 394
    iget-object p1, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v1

    .line 396
    :goto_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 405
    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/LockableAttributes;->setLocked(Z)V

    return-object v0

    .line 398
    :cond_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 400
    iget-object p2, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    .line 402
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attribute;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/message/LockableAttributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_0

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 412
    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/ContextPartition;->lookup(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 274
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/ContextPartition;->modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V

    return-void
.end method

.method public modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 286
    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/ContextPartition;->modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V

    return-void
.end method

.method public modifyRn(Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 446
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 448
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ldap/server/ContextPartition;->modifyRn(Ljavax/naming/Name;Ljava/lang/String;Z)V

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 459
    invoke-interface {v0, p1, p2}, Lorg/apache/ldap/server/ContextPartition;->move(Ljavax/naming/Name;Ljavax/naming/Name;)V

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 470
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 472
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ldap/server/ContextPartition;->move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V

    return-void
.end method

.method public register(Lorg/apache/ldap/server/ContextPartition;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    const-string v1, "namingContexts"

    invoke-interface {v0, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    .line 214
    invoke-interface {p1, v1}, Lorg/apache/ldap/server/ContextPartition;->getSuffix(Z)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/apache/ldap/server/ContextPartition;->getSuffix(Z)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 308
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 310
    invoke-virtual {p4}, Ljavax/naming/directory/SearchControls;->getSearchScope()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 312
    :goto_0
    move-object v0, p3

    check-cast v0, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectclass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 318
    instance-of p3, p3, Lorg/apache/ldap/common/filter/PresenceNode;

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 320
    invoke-virtual {p0}, Lorg/apache/ldap/server/RootNexus;->getRootDSE()Ljavax/naming/directory/Attributes;

    move-result-object p1

    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 322
    invoke-virtual {p4}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 324
    array-length p4, p3

    if-lez p4, :cond_4

    .line 328
    new-instance p4, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {p4}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    move v0, p2

    .line 330
    :goto_1
    array-length v1, p3

    if-lt v0, v1, :cond_1

    move-object p1, p4

    goto :goto_2

    .line 332
    :cond_1
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 339
    :cond_2
    aget-object v1, p3, v0

    invoke-interface {p1, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 341
    aget-object v1, p3, v0

    invoke-interface {p1, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    invoke-interface {p4, v1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_4
    :goto_2
    new-instance p3, Ljavax/naming/directory/SearchResult;

    const-string p4, ""

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p1, p2}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;Z)V

    .line 353
    new-instance p1, Lorg/apache/ldap/common/util/SingletonEnumeration;

    invoke-direct {p1, p3}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 356
    :cond_5
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;

    invoke-direct {p1}, Lorg/apache/ldap/common/exception/LdapNameNotFoundException;-><init>()V

    throw p1

    .line 359
    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/RootNexus;->getBackend(Ljavax/naming/Name;)Lorg/apache/ldap/server/ContextPartition;

    move-result-object v0

    .line 361
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ldap/server/ContextPartition;->search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public sync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 485
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 511
    new-instance v0, Ljavax/naming/NamingException;

    const-string v2, "Encountered failures while performing a sync() operation on backing stores"

    invoke-direct {v0, v2}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, v1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 487
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/BackingStore;

    .line 491
    :try_start_0
    invoke-interface {v2}, Lorg/apache/ldap/server/BackingStore;->sync()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 495
    invoke-virtual {v2}, Ljavax/naming/NamingException;->printStackTrace()V

    if-nez v1, :cond_2

    .line 499
    new-instance v1, Lorg/apache/ldap/common/MultiException;

    const-string v3, "Grouping many exceptions on root nexus sync()"

    invoke-direct {v1, v3}, Lorg/apache/ldap/common/MultiException;-><init>(Ljava/lang/String;)V

    .line 503
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/MultiException;->addThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregister(Lorg/apache/ldap/server/ContextPartition;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->rootDSE:Ljavax/naming/directory/Attributes;

    const-string v1, "namingContexts"

    invoke-interface {v0, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    .line 228
    invoke-interface {p1, v1}, Lorg/apache/ldap/server/ContextPartition;->getSuffix(Z)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/naming/directory/Attribute;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lorg/apache/ldap/server/RootNexus;->backends:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/apache/ldap/server/ContextPartition;->getSuffix(Z)Ljavax/naming/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
