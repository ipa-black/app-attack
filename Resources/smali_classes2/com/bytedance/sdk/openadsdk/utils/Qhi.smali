.class public Lcom/bytedance/sdk/openadsdk/utils/Qhi;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;,
        Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;,
        Lcom/bytedance/sdk/openadsdk/utils/Qhi$ac;,
        Lcom/bytedance/sdk/openadsdk/utils/Qhi$fl;,
        Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;
    }
.end annotation


# static fields
.field public static Qhi:Z = false

.field public static ac:J

.field public static cJ:J


# instance fields
.field private volatile ABk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Gm:Landroid/os/HandlerThread;

.field private final ROR:Lcom/bytedance/sdk/openadsdk/utils/Qhi$ac;

.field private final Sf:Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;

.field private final Tgh:Lcom/bytedance/sdk/openadsdk/utils/Qhi$fl;

.field private volatile WAv:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/adexpress/Qhi;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fl:Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;

.field private hm:I

.field private final iMK:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private zc:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$fl;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$fl;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/utils/Qhi$fl;

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$ac;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$ac;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/utils/Qhi$ac;

    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;

    .line 52
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->WAv:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Gm:Landroid/os/HandlerThread;

    .line 55
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->zc:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->iMK:Ljava/util/LinkedList;

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ac()V

    return-void
.end method

.method private CJ()V
    .locals 0

    .line 263
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/utils/Qhi;)Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;

    return-object p0
.end method

.method private Qhi(Ljava/lang/Runnable;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Gm:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ac()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->zc:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private ac()V
    .locals 3

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "lifecycle"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Gm:Landroid/os/HandlerThread;

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Gm:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->zc:Landroid/os/Handler;

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/utils/Qhi;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->CJ()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi;)V
    .locals 1

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 221
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->WAv:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Qhi(Z)Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ABk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return p1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ABk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return p1

    .line 276
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return p1

    .line 281
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    return p1
.end method

.method public cJ()Landroid/app/Activity;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->iMK:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->iMK:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cJ(Lcom/bytedance/sdk/component/adexpress/Qhi;)Z
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->WAv:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->iMK:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->WAv:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->WAv:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->WAv:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/Qhi;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi;->Qhi(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ABk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ABk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ABk:Ljava/lang/ref/WeakReference;

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->iMK:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 119
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    .line 123
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->isIsInit()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/utils/Qhi$ac;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/utils/Qhi$fl;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi(Ljava/lang/Runnable;)V

    .line 106
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi:Z

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->cJ:J

    const/4 v0, 0x1

    .line 108
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi:Z

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ABk:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 92
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->zc:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    .line 182
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->hm:I

    if-gtz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 186
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi:Z

    .line 187
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ac:J

    .line 189
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/utils/Qhi$cJ;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi(Ljava/lang/Runnable;)V

    .line 191
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->cJ:J

    sget-wide v4, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->ac:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi()Z

    move-result v6

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi;JJZ)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method
