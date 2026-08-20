.class public Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;
.super Ljava/lang/Object;
.source "InMemoryReplayCache.java"

# interfaces
.implements Lorg/apache/kerberos/kdc/replay/ReplayCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;
    }
.end annotation


# static fields
.field private static final TWO_WEEKS:J = 0x48190800L


# instance fields
.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;->list:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized purgeExpired()V
    .locals 5

    monitor-enter p0

    .line 51
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 53
    new-instance v2, Lorg/apache/kerberos/messages/value/KerberosTime;

    const-wide/32 v3, 0x48190800

    sub-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    .line 55
    iget-object v0, p0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;

    .line 58
    invoke-virtual {v1, v2}, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;->olderThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isReplay(Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)Z
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;-><init>(Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 33
    iget-object p1, p0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;

    .line 36
    invoke-virtual {p2, v0}, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;->equals(Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 37
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;->list:Ljava/util/List;

    new-instance v1, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache$ReplayCacheEntry;-><init>(Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-direct {p0}, Lorg/apache/kerberos/kdc/replay/InMemoryReplayCache;->purgeExpired()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
