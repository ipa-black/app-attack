.class public Lcom/bytedance/sdk/openadsdk/component/ac;
.super Ljava/lang/Object;
.source "AppOpenAdNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/ac$cJ;,
        Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;
    }
.end annotation


# instance fields
.field private ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field protected final CJ:Landroid/widget/FrameLayout;

.field private CQU:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

.field private Dww:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field private EBS:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

.field private Eh:Landroid/view/View;

.field private Gm:Landroid/widget/ImageView;

.field private HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field private final MQ:Lcom/bytedance/sdk/openadsdk/component/view/Qhi;

.field protected final Qhi:Landroid/app/Activity;

.field protected ROR:I

.field protected Sf:Landroid/widget/FrameLayout;

.field protected final Tgh:I

.field private WAv:Landroid/widget/RelativeLayout;

.field protected final ac:Z

.field private bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

.field protected final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field protected final fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

.field protected final hm:Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;

.field private hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field private iMK:Landroid/widget/ImageView;

.field private kYc:F

.field private pA:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private pM:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

.field private qMt:Landroid/view/View;

.field private tP:F

.field private zc:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Qhi;IZLcom/bytedance/sdk/openadsdk/component/Sf/Qhi;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/view/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/view/Qhi;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->MQ:Lcom/bytedance/sdk/openadsdk/component/view/Qhi;

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    .line 94
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 95
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->CJ:Landroid/widget/FrameLayout;

    .line 96
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ROR:I

    .line 97
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ac:Z

    .line 98
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    .line 99
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Tgh:I

    .line 100
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hm:Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;

    return-void
.end method

.method private Qhi(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 342
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 343
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->iMK:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    const-string p1, "open_ad"

    const-string v0, "bindBackGroundImage error"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AppOpenAdNativeManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/ac;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private ROR()V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setVisibility(I)V

    .line 310
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setVisibility(I)V

    .line 317
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    return-void
.end method

.method private Sf()V
    .locals 8

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    .line 330
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object v1

    .line 331
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/ROR/Qhi;->cJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 332
    new-instance v2, Lcom/bytedance/sdk/openadsdk/iMK/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac()I

    move-result v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/ac$cJ;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/component/ac$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi;IILcom/bytedance/sdk/openadsdk/utils/pA$Qhi;Ljava/lang/String;I)V

    return-void
.end method

.method private Tgh()V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->MQ:Lcom/bytedance/sdk/openadsdk/component/view/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/Qhi;->Qhi()V

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ots()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/ac;->ROR()V

    return-void

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ac:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ(I)V

    .line 238
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(I)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Sf:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(Landroid/widget/FrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->CJ()V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;Landroid/app/Activity;)V

    const/16 v4, 0x19

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/ROR$fl;I)V

    goto :goto_1

    .line 247
    :cond_2
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ(I)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(I)V

    .line 249
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/ac;->Sf()V

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Dww:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Dww:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move v0, v3

    goto :goto_3

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Dww:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 264
    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->CQU:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    if-eqz v4, :cond_5

    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->CQU:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 268
    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->pM:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    .line 269
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 270
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->CJ()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    .line 271
    :cond_6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->pM:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;->setVisibility(I)V

    :cond_7
    move v3, v0

    .line 276
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Eh:Landroid/view/View;

    if-eqz v0, :cond_a

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    .line 277
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private cJ(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Sf:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public CJ()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ac$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->qMt:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ac$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ac$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->EBS:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ac$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ac$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hm:Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;)Lcom/bytedance/sdk/openadsdk/component/Qhi/Qhi;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/ac$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/ac$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 206
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;)V

    .line 208
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zc()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->WAv:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->WAv:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public Qhi(FF)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->tP:F

    .line 393
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->kYc:F

    return-void
.end method

.method Qhi(I)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Gm:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public Qhi(IIZ)V
    .locals 0

    return-void
.end method

.method public Qhi(Landroid/view/ViewGroup;)V
    .locals 9

    .line 104
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;-><init>(Landroid/content/Context;)V

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ABk()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 108
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenIconOnlyLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenIconOnlyLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 110
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenHtmlLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenHtmlLayout;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 112
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->WAv:Landroid/widget/RelativeLayout;

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getBackImage()Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->iMK:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getVideoContainer()Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Sf:Landroid/widget/FrameLayout;

    .line 116
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getImageView()Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Gm:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getClickButton()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 118
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getAdLogo()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 119
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Dww:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 120
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getAdIconView()Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->CQU:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->pM:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    .line 122
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Eh:Landroid/view/View;

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getIconOnlyView()Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getTitle()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 126
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getContent()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    move-result-object p1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result p1

    if-nez p1, :cond_4

    .line 132
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->MQ:Lcom/bytedance/sdk/openadsdk/component/view/Qhi;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->tP:F

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->kYc:F

    iget-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->ac:Z

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/view/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;Lcom/bytedance/sdk/openadsdk/core/model/tP;FFZ)V

    .line 135
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getTopDisLike()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->qMt:Landroid/view/View;

    .line 136
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->EBS:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    .line 137
    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenHtmlLayout;

    if-eqz p1, :cond_5

    .line 138
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenHtmlLayout;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/ac$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenHtmlLayout;->setRenderListener(Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenHtmlLayout$Qhi;)V

    :cond_5
    return-void
.end method

.method Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V
    .locals 2

    .line 354
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->cJ()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Gm:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->cJ()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v0

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->ac()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/pA;->Qhi([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Gm:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Gm:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected Qhi(Landroid/widget/FrameLayout;)Z
    .locals 2

    .line 285
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    .line 286
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 287
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Qhi()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ttAppOpenAd playVideo error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_ad"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AppOpenAdNativeManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public ac()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Tgh()V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/ac;->Tgh()V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    return-void
.end method

.method public fl()Lcom/bytedance/sdk/openadsdk/component/Sf/ac;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac;->bxS:Lcom/bytedance/sdk/openadsdk/component/Sf/ac;

    return-object v0
.end method
