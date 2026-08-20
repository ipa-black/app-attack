.class Lio/bidmachine/ViewAdObject$1;
.super Ljava/lang/Object;
.source "ViewAdObject.java"

# interfaces
.implements Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ViewAdObject;->show(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ViewAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/ViewAdObject;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewShown()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-virtual {v1}, Lio/bidmachine/ViewAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerShown(Lio/bidmachine/unified/UnifiedAd;)Z

    move-result v0

    return v0
.end method

.method public onViewTrackingFinished()V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerImpression()V

    return-void
.end method
