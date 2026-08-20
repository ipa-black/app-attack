.class Lio/bidmachine/core/VisibilityTracker$TrackingHolder;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackingHolder"
.end annotation


# static fields
.field private static final AFD_MAX_COUNT_OVERLAPPED_VIEWS:I = 0x3

.field private static final CHECK_DELAY:I = 0x64


# instance fields
.field private final callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

.field private final checkRunnable:Ljava/lang/Runnable;

.field private final finishRunnable:Ljava/lang/Runnable;

.field private final ignoreCheckWindowFocus:Z

.field private isCheckerScheduled:Z

.field private isFinishedRequested:Z

.field private isFinishedTracked:Z

.field private isShownTracked:Z

.field private lastShownTimeMs:J

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final requiredOnScreenTime:J

.field private final viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final visibilityPercent:F


# direct methods
.method constructor <init>(Landroid/view/View;JFZLio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;

    invoke-direct {v0, p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;-><init>(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V

    iput-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->checkRunnable:Ljava/lang/Runnable;

    .line 262
    new-instance v0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$3;

    invoke-direct {v0, p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$3;-><init>(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V

    iput-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->finishRunnable:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->viewReference:Ljava/lang/ref/WeakReference;

    .line 43
    iput-wide p2, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->requiredOnScreenTime:J

    .line 44
    iput p4, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->visibilityPercent:F

    .line 45
    iput-boolean p5, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->ignoreCheckWindowFocus:Z

    .line 46
    iput-object p6, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->scheduleChecker()V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->check()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isCheckerScheduled:Z

    return p1
.end method

.method static synthetic access$400(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->release()V

    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->viewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private check()Z
    .locals 5

    .line 79
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->release()V

    return v1

    .line 84
    :cond_0
    iget-boolean v2, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isShownTracked:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedTracked:Z

    if-eqz v2, :cond_1

    .line 85
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->release()V

    return v1

    .line 88
    :cond_1
    iget v2, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->visibilityPercent:F

    iget-boolean v3, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->ignoreCheckWindowFocus:Z

    invoke-virtual {p0, v0, v2, v3}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isOnTop(Landroid/view/View;FZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

    invoke-interface {v0}, Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;->onViewShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isShownTracked:Z

    if-nez v0, :cond_2

    .line 90
    iput-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isShownTracked:Z

    .line 92
    :cond_2
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedRequested:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedTracked:Z

    if-nez v0, :cond_4

    .line 93
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->finishRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->requiredOnScreenTime:J

    invoke-static {v0, v3, v4}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;J)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->lastShownTimeMs:J

    .line 95
    iput-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedRequested:Z

    goto :goto_0

    .line 98
    :cond_3
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedTracked:Z

    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelUiThreadTask(Ljava/lang/Runnable;)V

    .line 100
    iput-boolean v2, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedRequested:Z

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->lastShownTimeMs:J

    :cond_4
    :goto_0
    return v2
.end method

.method private release()V
    .locals 5

    .line 108
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 110
    const-string v1, "Stop tracking - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 112
    iget-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isShownTracked:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedTracked:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->requiredOnScreenTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->lastShownTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->lastShownTimeMs:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->requiredOnScreenTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isFinishedTracked:Z

    .line 118
    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

    invoke-interface {v1}, Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;->onViewTrackingFinished()V

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelUiThreadTask(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelUiThreadTask(Ljava/lang/Runnable;)V

    .line 124
    invoke-static {}, Lio/bidmachine/core/VisibilityTracker;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-static {}, Lio/bidmachine/core/VisibilityTracker;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleChecker()V
    .locals 3

    .line 70
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isCheckerScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->isCheckerScheduled:Z

    .line 75
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static viewNotOverlappedAreaPercent(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    .line 238
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 242
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 243
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 244
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 245
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v1, v2

    const/4 p1, 0x0

    .line 246
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v3, p0

    .line 247
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/2addr v1, p0

    sub-int p0, v0, v1

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public isOnTop(Landroid/view/View;FZ)Z
    .locals 12

    const/4 v0, 0x1

    .line 133
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 135
    const-string p2, "Show wasn\'t tracked: global visibility verification failed - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const-string p2, "Show wasn\'t tracked: view visibility verification failed - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 144
    :cond_1
    invoke-static {p1}, Lio/bidmachine/core/Utils;->isViewTransparent(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    const-string p2, "Show wasn\'t tracked: view transparent verification failed - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    :cond_2
    if-nez p3, :cond_3

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p3

    if-nez p3, :cond_3

    .line 150
    const-string p2, "Show wasn\'t tracked: window focus verification failed - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 154
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr p3, v2

    int-to-float p3, p3

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_4

    .line 156
    const-string p2, "Show wasn\'t tracked: view size verification failed - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 161
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, p3

    cmpg-float p3, v2, p2

    if-gez p3, :cond_5

    .line 164
    const-string p3, "Show wasn\'t tracked: ad view not completely visible (%s / %s) - %s"

    .line 165
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 166
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {v1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 164
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 171
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    :goto_0
    if-eqz p3, :cond_6

    .line 172
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x1020002

    if-eq v2, v4, :cond_6

    .line 173
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    .line 176
    const-string p2, "Show wasn\'t tracked: activity content layout not found - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 180
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 182
    invoke-static {v1, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 183
    const-string p2, "Show wasn\'t tracked: ad view is out of current window - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    .line 188
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move v4, v3

    :goto_1
    if-eqz v2, :cond_d

    .line 192
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v0

    .line 193
    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 194
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 195
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x2

    .line 196
    new-array v7, v7, [I

    .line 197
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 198
    invoke-static {v6}, Lio/bidmachine/core/Utils;->getViewRectangle(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    .line 199
    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 200
    invoke-static {v1, v7}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->viewNotOverlappedAreaPercent(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v7

    .line 202
    const-string v8, "Show wasn\'t tracked: ad view is overlapped by another visible view (%s), visible percent: %s / %s"

    .line 205
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 206
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v6, v9, v10}, [Ljava/lang/Object;

    move-result-object v6

    .line 202
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    cmpg-float v6, v7, p2

    if-gez v6, :cond_9

    .line 208
    const-string p2, "Show wasn\'t tracked: ad view is covered by another view - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x3

    if-lt v4, v6, :cond_a

    .line 215
    const-string p2, "Show wasn\'t tracked: ad view is covered by too many views - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    if-eq v2, p3, :cond_c

    .line 226
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    goto :goto_1

    :cond_c
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_d
    return v0
.end method

.method public start()V
    .locals 3

    .line 50
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->release()V

    return-void

    .line 55
    :cond_0
    const-string v1, "Start tracking - %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$1;

    invoke-direct {v1, p0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$1;-><init>(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V

    iput-object v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
