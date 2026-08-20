.class public Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;
.super Landroid/widget/FrameLayout;
.source "AdmobNativeBannerMedium.java"


# static fields
.field private static final MEDIUM_TEMPLATE:Ljava/lang/String; = "medium_template"

.field private static final SMALL_TEMPLATE:Ljava/lang/String; = "small_template"


# instance fields
.field private background:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private callToActionView:Landroid/widget/Button;

.field private iconView:Landroid/widget/ImageView;

.field private mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field private nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field private primaryView:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private secondaryView:Landroid/widget/TextView;

.field private styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

.field private tertiaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z
    .locals 1

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private applyStyles()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getMainBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getPrimaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getSecondaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getTertiaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 97
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getCallToActionTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getPrimaryTextTypefaceColor()I

    move-result v0

    if-lez v0, :cond_7

    .line 107
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 108
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getSecondaryTextTypefaceColor()I

    move-result v0

    if-lez v0, :cond_8

    .line 112
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_8
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getTertiaryTextTypefaceColor()I

    move-result v0

    if-lez v0, :cond_9

    .line 117
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getCallToActionTypefaceColor()I

    move-result v0

    if-lez v0, :cond_a

    .line 122
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_a

    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getCallToActionTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b

    .line 127
    iget-object v2, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 128
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getPrimaryTextSize()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_c

    .line 132
    iget-object v2, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 133
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 136
    :cond_c
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getSecondaryTextSize()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d

    .line 137
    iget-object v2, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 138
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getTertiaryTextSize()F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_e

    .line 142
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getCallToActionBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 147
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_f

    .line 148
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_f
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getPrimaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 152
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_10
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getSecondaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 157
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_11
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->getTertiaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 162
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_12
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->invalidate()V

    .line 167
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->requestLayout()V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 245
    const-string p2, "layout_inflater"

    .line 246
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 247
    sget p2, Lcom/appsgeyser/sdk/R$layout;->gnt_medium_template_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroyNativeAd()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    return-void
.end method

.method public getNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 252
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 253
    sget v0, Lcom/appsgeyser/sdk/R$id;->native_ad_view:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 254
    sget v0, Lcom/appsgeyser/sdk/R$id;->primary:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    .line 255
    sget v0, Lcom/appsgeyser/sdk/R$id;->secondary:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    .line 256
    sget v0, Lcom/appsgeyser/sdk/R$id;->body:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    .line 258
    sget v0, Lcom/appsgeyser/sdk/R$id;->rating_bar:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 261
    sget v0, Lcom/appsgeyser/sdk/R$id;->cta:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    .line 262
    sget v0, Lcom/appsgeyser/sdk/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->iconView:Landroid/widget/ImageView;

    .line 263
    sget v0, Lcom/appsgeyser/sdk/R$id;->media_view:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 264
    sget v0, Lcom/appsgeyser/sdk/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 13

    .line 177
    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v5

    .line 185
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v6

    .line 189
    iget-object v7, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v8, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 190
    iget-object v7, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v8, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 191
    iget-object v7, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v8, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 192
    iget-object v7, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStoreView(Landroid/view/View;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 200
    :cond_1
    const-string v0, ""

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->callToActionView:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-eqz v5, :cond_2

    .line 207
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v2, v9, v11

    if-lez v2, :cond_2

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 212
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStarRatingView(Landroid/view/View;)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    :goto_1
    if-eqz v6, :cond_3

    .line 220
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 227
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->tertiaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public setStyles(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    .line 63
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/admobnative/AdmobNativeBannerMedium;->applyStyles()V

    return-void
.end method
