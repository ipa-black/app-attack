.class Lio/bidmachine/core/VisibilityTracker$TrackingHolder$1;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;


# direct methods
.method constructor <init>(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$1;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$1;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->access$000(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V

    const/4 v0, 0x1

    return v0
.end method
