.class Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

.field public final synthetic val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;->this$0:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    iput-object p2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleError()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;

    invoke-interface {v0}, Lcom/explorestack/iab/utils/IabClickCallback;->clickHandleError()V

    return-void
.end method

.method public onHandled()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;

    invoke-interface {v0}, Lcom/explorestack/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method

.method public processClick(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener$1;->this$0:Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    iget-object v0, v0, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->callback:Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdClicked(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method
