.class Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$1;
.super Ljava/lang/Object;
.source "MraidFullScreenAdListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;

.field final synthetic val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$1;->this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/IabClickCallback;

    invoke-interface {v0}, Lcom/explorestack/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method
