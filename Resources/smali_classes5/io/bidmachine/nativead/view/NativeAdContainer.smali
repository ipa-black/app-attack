.class Lio/bidmachine/nativead/view/NativeAdContainer;
.super Landroid/widget/FrameLayout;
.source "NativeAdContainer.java"


# instance fields
.field innerContainer:Landroid/widget/FrameLayout;

.field previousConfiguredAdContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    .line 54
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 69
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 78
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected configureContainer(Landroid/view/ViewGroup;)V
    .locals 3

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lio/bidmachine/utils/ViewHelper;->removeViewFromParent(Landroid/view/View;)V

    .line 130
    invoke-static {p1}, Lio/bidmachine/utils/ViewHelper;->removeViewFromParent(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->removePreviousAdContainer()V

    const/4 v1, 0x0

    .line 132
    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->previousConfiguredAdContainer:Landroid/view/View;

    return-void
.end method

.method protected deConfigureContainer()V
    .locals 3

    .line 138
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->previousConfiguredAdContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lio/bidmachine/utils/ViewHelper;->removeViewFromParent(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->removePreviousAdContainer()V

    .line 141
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 143
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected removePreviousAdContainer()V
    .locals 1

    .line 148
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->previousConfiguredAdContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->previousConfiguredAdContainer:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->previousConfiguredAdContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->removePreviousAdContainer()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->innerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
