.class public abstract Lcom/appodeal/ads/native_ad/views/NativeAdView;
.super Lcom/appodeal/ads/NativeAdView;
.source "SourceFile"


# instance fields
.field public k:Landroid/widget/RelativeLayout;

.field public l:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/LinearLayout;

.field public o:Lcom/appodeal/ads/NativeAd;

.field public p:Landroid/content/Context;

.field public q:Z

.field public r:I

.field public s:Z

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/appodeal/ads/NativeAdView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    const-string v0, "default"

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    iput-boolean p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    const-string p2, "default"

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    iput-boolean p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    const-string p2, "default"

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    iput-boolean p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    const-string p2, "default"

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/appodeal/ads/NativeAdView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    iput-object p3, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    if-eqz v1, :cond_0

    const-string v1, "Sponsored"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    const v1, -0x333334

    goto :goto_0

    :cond_0
    const-string v1, " Ad "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    const-string v1, "#fcb41c"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic getCallToActionView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->getCallToActionView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getCallToActionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic getDescriptionView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic getNativeIconView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->getNativeIconView()Lcom/appodeal/ads/NativeIconView;

    move-result-object v0

    return-object v0
.end method

.method public getNativeIconView()Lcom/appodeal/ads/NativeIconView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    return-object v0
.end method

.method public getNativeMediaView()Lcom/appodeal/ads/NativeMediaView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public setCallToActionColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->b()V

    return-void
.end method

.method public setCallToActionColor(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->b()V

    return-void
.end method

.method public setNativeAd(Lcom/appodeal/ads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->a()V

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    return-void
.end method

.method public showSponsored(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->s:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->c()V

    return-void
.end method
