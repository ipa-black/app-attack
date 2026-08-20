.class public Lcom/appodeal/ads/k1;
.super Lcom/appodeal/ads/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/r<",
        "TAdObjectType;>;AdObjectType:",
        "Lcom/appodeal/ads/j1;",
        ">",
        "Lcom/appodeal/ads/p<",
        "TAdRequestType;TAdObjectType;",
        "Lcom/appodeal/ads/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/appodeal/ads/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/p;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/appodeal/ads/r0;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/appodeal/ads/r0;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/appodeal/ads/q;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)Z"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return v0

    :cond_0
    iget-object v3, p2, Lcom/appodeal/ads/q;->a:Lcom/appodeal/ads/segments/g;

    iget-boolean p2, p2, Lcom/appodeal/ads/q;->b:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1
    iget-boolean v1, v4, Lcom/appodeal/ads/r;->u:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4}, Lcom/appodeal/ads/r;->u()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3
    iget-object v5, v3, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 4
    filled-new-array {p2, v1, v2, v5}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "isDebug: %s, isLoaded: %s, isLoading: %s, placement: \'%s\'"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Show"

    invoke-virtual {p3, v1, p2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p3, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 6
    iget-wide v1, v4, Lcom/appodeal/ads/r;->t:D

    .line 7
    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/appodeal/ads/segments/g;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 8
    :cond_1
    iget-object p2, v3, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 9
    iget-boolean v1, v4, Lcom/appodeal/ads/r;->u:Z

    if-nez v1, :cond_2

    .line 10
    iget-boolean v1, v4, Lcom/appodeal/ads/r;->v:Z

    if-nez v1, :cond_2

    .line 11
    iget-object v1, v4, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    :cond_2
    iget-object p2, v3, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, p2}, Lcom/appodeal/ads/r;->a(Ljava/lang/String;)Lcom/appodeal/ads/l;

    move-result-object p2

    .line 14
    iput-object p2, v4, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 15
    move-object v5, p2

    check-cast v5, Lcom/appodeal/ads/j1;

    if-eqz v5, :cond_3

    .line 16
    iput-object v4, p3, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 17
    new-instance p2, Lcom/appodeal/ads/k1$a;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/k1$a;-><init>(Lcom/appodeal/ads/k1;Landroid/app/Activity;Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V

    .line 18
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final b(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/appodeal/ads/q;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/appodeal/ads/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/appodeal/ads/u;->d()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Can\'t show %s. Fullscreen ad is already shown"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDK"

    const-string p3, "Show Error"

    invoke-static {p2, p3, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/p;->b(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    new-instance p2, Lcom/appodeal/ads/k1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/appodeal/ads/k1$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v0, 0x3a98

    invoke-static {p2, v0, v1}, Lcom/appodeal/ads/h5;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return p1
.end method
