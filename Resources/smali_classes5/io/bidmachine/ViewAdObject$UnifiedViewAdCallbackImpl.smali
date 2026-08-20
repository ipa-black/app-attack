.class final Lio/bidmachine/ViewAdObject$UnifiedViewAdCallbackImpl;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "ViewAdObject.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedBannerAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnifiedViewAdCallbackImpl"
.end annotation


# instance fields
.field private final weakAdObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/ViewAdObject<",
            "***>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ViewAdObject<",
            "***>;",
            "Lio/bidmachine/AdProcessCallback;",
            ")V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p2}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    .line 194
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/ViewAdObject$UnifiedViewAdCallbackImpl;->weakAdObject:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdLoaded(Landroid/view/View;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$UnifiedViewAdCallbackImpl;->weakAdObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_1

    .line 201
    invoke-static {v0}, Lio/bidmachine/ViewAdObject;->access$000(Lio/bidmachine/ViewAdObject;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-static {v0}, Lio/bidmachine/ViewAdObject;->access$000(Lio/bidmachine/ViewAdObject;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    .line 204
    :cond_0
    invoke-static {v0, p1}, Lio/bidmachine/ViewAdObject;->access$002(Lio/bidmachine/ViewAdObject;Landroid/view/View;)Landroid/view/View;

    .line 206
    iget-object p1, p0, Lio/bidmachine/ViewAdObject$UnifiedViewAdCallbackImpl;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lio/bidmachine/ViewAdObject$UnifiedViewAdCallbackImpl;->processCallback:Lio/bidmachine/AdProcessCallback;

    const-string v0, "ViewAdObject is null"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
