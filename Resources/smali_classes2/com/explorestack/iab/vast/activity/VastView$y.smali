.class public final Lcom/explorestack/iab/vast/activity/VastView$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "y"
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$y;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView$y;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$y;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->x(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method

.method public onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$y;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->z(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method

.method public onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$y;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v1, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$y;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->showInView(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    invoke-interface {p3}, Lcom/explorestack/iab/utils/IabClickCallback;->clickHandled()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$y;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p3, p1, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-static {p1, p3, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    return-void
.end method

.method public onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    return-void
.end method
