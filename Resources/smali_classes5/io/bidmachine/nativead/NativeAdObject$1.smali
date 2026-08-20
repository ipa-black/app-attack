.class Lio/bidmachine/nativead/NativeAdObject$1;
.super Ljava/lang/Object;
.source "NativeAdObject.java"

# interfaces
.implements Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/NativeAdObject;->registerView(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeAdObject;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$1;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewShown()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$1;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdObject;->dispatchShown()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewTrackingFinished()V
    .locals 2

    .line 279
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$1;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/nativead/NativeAdObject;->access$002(Lio/bidmachine/nativead/NativeAdObject;Z)Z

    .line 280
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$1;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdObject;->dispatchImpression()V

    return-void
.end method
