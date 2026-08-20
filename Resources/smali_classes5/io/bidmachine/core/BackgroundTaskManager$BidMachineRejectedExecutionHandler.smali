.class final Lio/bidmachine/core/BackgroundTaskManager$BidMachineRejectedExecutionHandler;
.super Ljava/lang/Object;
.source "BackgroundTaskManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/BackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BidMachineRejectedExecutionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/core/BackgroundTaskManager$1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/core/BackgroundTaskManager$BidMachineRejectedExecutionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    return-void
.end method
