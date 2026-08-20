.class public final Lcom/appodeal/ads/AppodealUnityBannerView$b;
.super Lcom/appodeal/ads/x5$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/AppodealUnityBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/x5$e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$b;->c:I

    iput p1, p0, Lcom/appodeal/ads/AppodealUnityBannerView$b;->d:I

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 8

    iget v0, p0, Lcom/appodeal/ads/AppodealUnityBannerView$b;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/AppodealUnityBannerView$b;->d:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/appodeal/ads/x5$e;->onLayout(ZIIII)V

    goto/16 :goto_7

    .line 1
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_f

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const v5, 0x800033

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v5, v5, 0x70

    iget v7, p0, Lcom/appodeal/ads/AppodealUnityBannerView$b;->c:I

    if-eqz v7, :cond_4

    add-int/2addr v7, v0

    add-int v6, v7, v3

    sub-int/2addr v6, p4

    if-lez v6, :cond_3

    sub-int/2addr v7, v6

    :cond_3
    if-ge v7, v0, :cond_7

    move v7, v0

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v7, v0, v6

    goto :goto_3

    :cond_5
    sub-int v6, p4, v3

    goto :goto_2

    :cond_6
    sub-int v6, p4, v0

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    :goto_2
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v6, v7

    :cond_7
    :goto_3
    iget v6, p0, Lcom/appodeal/ads/AppodealUnityBannerView$b;->d:I

    if-eqz v6, :cond_9

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    add-int v5, v2, v4

    sub-int/2addr v5, p5

    if-lez v5, :cond_8

    sub-int/2addr v2, v5

    :cond_8
    if-ge v2, p2, :cond_d

    move v2, p2

    goto :goto_6

    :cond_9
    const/16 v6, 0x10

    if-eq v5, v6, :cond_c

    const/16 v6, 0x30

    if-eq v5, v6, :cond_b

    const/16 v6, 0x50

    if-eq v5, v6, :cond_a

    goto :goto_4

    :cond_a
    sub-int v5, p5, v4

    goto :goto_5

    :cond_b
    :goto_4
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p2

    goto :goto_6

    :cond_c
    sub-int v5, p5, p2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    :goto_5
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v5, v2

    :cond_d
    :goto_6
    add-int/2addr v3, v7

    add-int/2addr v4, v2

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_f
    :goto_7
    return-void
.end method
