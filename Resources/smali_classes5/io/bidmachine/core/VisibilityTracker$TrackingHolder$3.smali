.class Lio/bidmachine/core/VisibilityTracker$TrackingHolder$3;
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

    .line 262
    iput-object p1, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$3;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 265
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$TrackingHolder$3;->this$0:Lio/bidmachine/core/VisibilityTracker$TrackingHolder;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$TrackingHolder;->access$400(Lio/bidmachine/core/VisibilityTracker$TrackingHolder;)V

    return-void
.end method
