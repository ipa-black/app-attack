.class public final Lcom/appnext/base/services/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile eA:Lcom/appnext/base/services/a;


# instance fields
.field private dP:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aK()Lcom/appnext/base/services/a;
    .locals 2

    .line 16
    sget-object v0, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/appnext/base/operations/b;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/appnext/base/services/a;

    invoke-direct {v1}, Lcom/appnext/base/services/a;-><init>()V

    sput-object v1, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/base/services/a;->eA:Lcom/appnext/base/services/a;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getKey()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/appnext/base/services/a;->dP:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setKey(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/appnext/base/services/a;->dP:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
