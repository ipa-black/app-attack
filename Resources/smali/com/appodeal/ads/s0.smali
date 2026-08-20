.class public final Lcom/appodeal/ads/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/appodeal/ads/AppodealUnityBannerView;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AppodealUnityBannerView;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/s0;->c:Lcom/appodeal/ads/AppodealUnityBannerView;

    iput-object p2, p0, Lcom/appodeal/ads/s0;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/appodeal/ads/s0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/s0;->c:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/s0;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/appodeal/ads/s0;->b:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/q4;->b(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/appodeal/ads/s0;->c:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/s0;->c:Lcom/appodeal/ads/AppodealUnityBannerView;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    :cond_1
    return-void
.end method
