.class public final Lcom/appodeal/ads/AppodealUnityBannerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/AppodealUnityBannerView;->a(Landroid/app/Activity;IIILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/appodeal/ads/AppodealUnityBannerView;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AppodealUnityBannerView;Landroid/app/Activity;IIIILandroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    iput-object p2, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->b:I

    iput p4, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->c:I

    iput p5, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->d:I

    iput p6, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->e:I

    iput-object p7, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->b:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/q4;->b(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

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
    iget-object v0, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 7
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    iget v3, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->d:I

    iget v4, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->e:I

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq v3, v2, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    :goto_0
    const/16 v7, 0x8

    if-eq v4, v7, :cond_4

    const/16 v4, 0x30

    goto :goto_1

    :cond_4
    const/16 v4, 0x50

    :goto_1
    or-int/2addr v3, v4

    .line 9
    invoke-direct {v0, v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    new-instance v3, Lcom/appodeal/ads/AppodealUnityBannerView$b;

    iget-object v4, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/appodeal/ads/AppodealUnityBannerView$b;-><init>(Landroid/app/Activity;)V

    .line 10
    iput-object v3, v1, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 11
    iget-object v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 12
    iget-object v3, v1, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 13
    iget v4, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->d:I

    const/4 v8, -0x4

    const/4 v9, 0x0

    if-eq v4, v8, :cond_5

    if-eq v4, v2, :cond_5

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_5

    goto :goto_2

    :cond_5
    move v4, v9

    :goto_2
    iget v2, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->e:I

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v7, :cond_6

    const/16 v1, 0x10

    if-eq v2, v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v9

    .line 15
    :goto_3
    iput v4, v3, Lcom/appodeal/ads/AppodealUnityBannerView$b;->c:I

    .line 16
    iput v2, v3, Lcom/appodeal/ads/AppodealUnityBannerView$b;->d:I

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 17
    iget-object v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 18
    iget-object v1, v1, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 19
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 20
    iget-object v1, v1, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 21
    iget-object v2, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->f:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appodeal/ads/AppodealUnityBannerView$a;->g:Lcom/appodeal/ads/AppodealUnityBannerView;

    .line 22
    iget-object v2, v2, Lcom/appodeal/ads/AppodealUnityBannerView;->a:Lcom/appodeal/ads/AppodealUnityBannerView$b;

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
