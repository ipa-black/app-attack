.class Lio/bidmachine/BidMachineActivityManager;
.super Ljava/lang/Object;
.source "BidMachineActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static weakTopActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/BidMachineActivityManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 42
    sget-object v0, Lio/bidmachine/BidMachineActivityManager;->weakTopActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 3

    .line 26
    sget-object v0, Lio/bidmachine/BidMachineActivityManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 33
    check-cast p0, Landroid/app/Application;

    new-instance v0, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks;-><init>(Lio/bidmachine/BidMachineActivityManager$1;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static setTopActivity(Landroid/app/Activity;)V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/bidmachine/BidMachineActivityManager;->weakTopActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
