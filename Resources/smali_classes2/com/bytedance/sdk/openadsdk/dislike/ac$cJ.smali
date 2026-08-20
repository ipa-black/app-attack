.class public Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;
.super Landroid/widget/BaseAdapter;
.source "TTDislikeDialogDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dislike/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;
    }
.end annotation


# instance fields
.field private Qhi:Z

.field private final ac:Landroid/view/LayoutInflater;

.field private final cJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->Qhi:Z

    .line 292
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    .line 293
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->ac:Landroid/view/LayoutInflater;

    return-void
.end method

.method private Qhi(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 353
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 355
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    .line 358
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ZRq:I

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setId(I)V

    .line 359
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 360
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 361
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setGravity(I)V

    .line 363
    const-string v2, "#FF4A4A4A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 364
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextSize(F)V

    .line 367
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 368
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MIe:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setId(I)V

    .line 369
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v4, 0x800015

    .line 370
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 371
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 372
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setRotation(F)V

    .line 373
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 374
    const-string v3, "tt_lefterbackicon_titlebar_press_wrapper"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    .line 378
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->notifyDataSetChanged()V

    return-void
.end method

.method public Qhi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 383
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->Qhi:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 320
    new-instance p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/ac$1;)V

    .line 321
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->ac:Landroid/view/LayoutInflater;

    invoke-virtual {p3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->Qhi(Landroid/content/Context;)Landroid/view/View;

    move-result-object p3

    .line 322
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ZRq:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->Qhi:Landroid/widget/TextView;

    .line 323
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MIe:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->cJ:Landroid/widget/ImageView;

    .line 324
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 330
    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->Qhi:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->YB()Z

    move-result v1

    const-string v2, "tt_dislike_middle_seletor"

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->Qhi:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->ac:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->cJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_2

    .line 335
    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->Qhi:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->ac:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 337
    :cond_2
    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->Qhi:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->ac:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_bottom_seletor"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :goto_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->Qhi:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 341
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->Qhi:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ;->ac:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_top_seletor"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 345
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->cJ:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 347
    :cond_4
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/ac$cJ$Qhi;->cJ:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p3
.end method
