.class Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks;
.super Ljava/lang/Object;
.source "BidMachineActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/BidMachineActivityManager$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityPaused$1()V
    .locals 1

    .line 73
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->pause()V

    return-void
.end method

.method static synthetic lambda$onActivityResumed$0()V
    .locals 1

    .line 68
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->resume()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 73
    new-instance p1, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lio/bidmachine/BidMachineActivityManager;->setTopActivity(Landroid/app/Activity;)V

    .line 68
    new-instance p1, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/bidmachine/BidMachineActivityManager$LifecycleCallbacks$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 61
    invoke-static {p1}, Lio/bidmachine/BidMachineActivityManager;->setTopActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
