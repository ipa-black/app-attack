.class Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/VisibilityTracker$TrackingHolder;
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

    .line 252
    iput-object p1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->access$200(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->access$302(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;Z)Z

    .line 257
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$2;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->access$000(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V

    :cond_0
    return-void
.end method
