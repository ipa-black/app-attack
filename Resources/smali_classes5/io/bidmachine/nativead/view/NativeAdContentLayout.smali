.class public Lio/bidmachine/nativead/view/NativeAdContentLayout;
.super Lio/bidmachine/nativead/view/NativeAdContainer;
.source "NativeAdContentLayout.java"


# instance fields
.field protected callToActionView:Landroid/view/View;

.field private callToActionViewId:I

.field private currentAd:Lio/bidmachine/nativead/NativeAd;

.field protected descriptionView:Landroid/view/View;

.field private descriptionViewId:I

.field protected iconView:Landroid/view/View;

.field private iconViewId:I

.field protected mediaView:Lio/bidmachine/nativead/view/NativeMediaView;

.field private mediaViewId:I

.field protected providerView:Landroid/view/View;

.field private providerViewId:I

.field protected ratingView:Landroid/view/View;

.field private ratingViewId:I

.field protected titleView:Landroid/view/View;

.field private titleViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->titleViewId:I

    .line 35
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionViewId:I

    .line 36
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->ratingViewId:I

    .line 37
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->descriptionViewId:I

    .line 38
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerViewId:I

    .line 39
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->iconViewId:I

    .line 40
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->mediaViewId:I

    if-eqz p2, :cond_0

    .line 54
    sget-object v1, Lio/bidmachine/R$styleable;->NativeAdContentLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_titleViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->titleViewId:I

    .line 60
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_callToActionViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionViewId:I

    .line 62
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_ratingViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->ratingViewId:I

    .line 64
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_descriptionViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->descriptionViewId:I

    .line 66
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_providerViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerViewId:I

    .line 68
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_iconViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->iconViewId:I

    .line 70
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_mediaViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->mediaViewId:I

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private collectClickableViews(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->getClickableViews()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;I)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;II)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bind(Lio/bidmachine/nativead/NativeAd;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 168
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 171
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->titleView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 172
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->descriptionView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 175
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->ratingView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_4

    .line 178
    check-cast v0, Landroid/widget/RatingBar;

    .line 179
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getRating()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 184
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 187
    :cond_4
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 188
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_5
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 191
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/NativeAd;->getProviderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 193
    invoke-static {p1}, Lio/bidmachine/utils/ViewHelper;->removeViewFromParent(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic bringChildToFront(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 226
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->currentAd:Lio/bidmachine/nativead/NativeAd;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->destroy()V

    :cond_0
    return-void
.end method

.method public getCallToActionView()Landroid/view/View;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionView:Landroid/view/View;

    return-object v0
.end method

.method public getClickableViews()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getDescriptionView()Landroid/view/View;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->descriptionView:Landroid/view/View;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->iconView:Landroid/view/View;

    return-object v0
.end method

.method public getMediaView()Lio/bidmachine/nativead/view/NativeMediaView;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->mediaView:Lio/bidmachine/nativead/view/NativeMediaView;

    return-object v0
.end method

.method public getProviderView()Landroid/view/View;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerView:Landroid/view/View;

    return-object v0
.end method

.method public getRatingView()Landroid/view/View;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->ratingView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->titleView:Landroid/view/View;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->currentAd:Lio/bidmachine/nativead/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->isViewRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 78
    invoke-super {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->onFinishInflate()V

    .line 80
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->titleViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setTitleView(Landroid/view/View;)V

    .line 81
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setCallToActionView(Landroid/view/View;)V

    .line 82
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->ratingViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setRatingView(Landroid/view/View;)V

    .line 83
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->descriptionViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setDescriptionView(Landroid/view/View;)V

    .line 84
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setProviderView(Landroid/view/View;)V

    .line 85
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->iconViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setIconView(Landroid/view/View;)V

    .line 86
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->mediaViewId:I

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/view/NativeMediaView;

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V

    return-void
.end method

.method public registerViewForInteraction(Lio/bidmachine/nativead/NativeAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->registerViewForInteraction(Lio/bidmachine/nativead/NativeAd;Ljava/util/Set;)V

    return-void
.end method

.method public registerViewForInteraction(Lio/bidmachine/nativead/NativeAd;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/nativead/NativeAd;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->unregisterViewForInteraction()V

    .line 212
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->currentAd:Lio/bidmachine/nativead/NativeAd;

    .line 214
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->getMediaView()Lio/bidmachine/nativead/view/NativeMediaView;

    move-result-object v1

    .line 216
    invoke-direct {p0, p2}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->collectClickableViews(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 213
    invoke-virtual {p1, p0, v0, v1, p2}, Lio/bidmachine/nativead/NativeAd;->registerView(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    return-void

    .line 208
    :cond_1
    :goto_0
    const-string p1, "Native ad is not loaded. Please load it before registering"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeAllViews()V
    .locals 0

    .line 22
    invoke-super {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->removeAllViews()V

    return-void
.end method

.method public bridge synthetic removeView(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->callToActionView:Landroid/view/View;

    return-void
.end method

.method public setDescriptionView(Landroid/view/View;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->descriptionView:Landroid/view/View;

    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->iconView:Landroid/view/View;

    return-void
.end method

.method public setMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->mediaView:Lio/bidmachine/nativead/view/NativeMediaView;

    return-void
.end method

.method public setProviderView(Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->providerView:Landroid/view/View;

    return-void
.end method

.method public setRatingView(Landroid/view/View;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->ratingView:Landroid/view/View;

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->titleView:Landroid/view/View;

    return-void
.end method

.method public unregisterViewForInteraction()V
    .locals 1

    .line 220
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->currentAd:Lio/bidmachine/nativead/NativeAd;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAd;->unregisterView()V

    :cond_0
    return-void
.end method
