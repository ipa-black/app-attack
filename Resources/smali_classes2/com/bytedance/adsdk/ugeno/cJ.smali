.class public Lcom/bytedance/adsdk/ugeno/cJ;
.super Lcom/bytedance/adsdk/ugeno/component/Qhi;
.source "UGSwiperWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/component/Qhi<",
        "Lcom/bytedance/adsdk/ugeno/swiper/Swiper;",
        ">;"
    }
.end annotation


# instance fields
.field private Dq:F

.field private HLI:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private Hf:Ljava/lang/String;

.field private NBs:Z

.field private Qe:Z

.field private ReL:F

.field private YB:Z

.field private cjC:F

.field private dI:I

.field private dIT:Ljava/lang/String;

.field private dVA:I

.field private oU:F

.field private ots:Lorg/json/JSONArray;

.field private pv:F

.field private zjb:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/Qhi;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Qe:Z

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->YB:Z

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cjC:F

    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 27
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Dq:F

    .line 28
    const-string v0, "normal"

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Hf:Ljava/lang/String;

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->NBs:Z

    .line 30
    const-string p1, "#666666"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dI:I

    .line 31
    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dVA:I

    return-void
.end method


# virtual methods
.method public Qhi(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;->WAv(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/component/cJ;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/swiper/Qhi;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;->setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/swiper/Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 130
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/component/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dataList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "indicatorSelectedColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "pageMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "pageCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "previousMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "indicator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "direction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "nextMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "indicatorColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v2, v1

    goto :goto_0

    :sswitch_d
    const-string v0, "delayStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 166
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/cJ;->Qhi(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->ots:Lorg/json/JSONArray;

    return-void

    .line 142
    :pswitch_1
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->YB:Z

    return-void

    .line 163
    :pswitch_2
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cJ/Qhi;->Qhi(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dVA:I

    return-void

    .line 175
    :pswitch_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cJ:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->oU:F

    :goto_1
    return-void

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 157
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->zjb:F

    return-void

    :pswitch_5
    const/high16 p1, 0x43fa0000    # 500.0f

    .line 148
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Dq:F

    return-void

    .line 139
    :pswitch_6
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Qe:Z

    return-void

    .line 169
    :pswitch_7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cJ:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->pv:F

    return-void

    .line 154
    :pswitch_8
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->NBs:Z

    return-void

    .line 136
    :pswitch_9
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dIT:Ljava/lang/String;

    return-void

    .line 151
    :pswitch_a
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Hf:Ljava/lang/String;

    return-void

    .line 172
    :pswitch_b
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cJ:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->ReL:F

    return-void

    .line 160
    :pswitch_c
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cJ/Qhi;->Qhi(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dI:I

    return-void

    .line 145
    :pswitch_d
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cjC:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d26b61 -> :sswitch_d
        -0x5dec0d6c -> :sswitch_c
        -0x56a0457f -> :sswitch_b
        -0x4dd9466f -> :sswitch_a
        -0x395ff881 -> :sswitch_9
        -0x2a7041f1 -> :sswitch_8
        -0xc0b287b -> :sswitch_7
        0x32c6a4 -> :sswitch_6
        0x6890047 -> :sswitch_5
        0x33223fc0 -> :sswitch_4
        0x416f6d1d -> :sswitch_3
        0x4757b7b9 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x6a9f2f68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public ac()Landroid/view/View;
    .locals 2

    .line 65
    new-instance v0, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cJ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;->Qhi(Lcom/bytedance/adsdk/ugeno/ac;)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    return-object v0
.end method

.method public cJ()V
    .locals 4

    .line 85
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/component/Qhi;->cJ()V

    .line 86
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->ots:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->oU:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;->CJ(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->pv:F

    float-to-int v1, v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->fl(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->ReL:F

    float-to-int v1, v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Tgh(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->NBs:Z

    .line 93
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dVA:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->dI:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Hf:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Qe:Z

    .line 97
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->ac(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->zjb:F

    .line 98
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(F)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->YB:Z

    .line 99
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->Dq:F

    float-to-int v1, v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->Qhi(I)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->NBs:Z

    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;->cJ(Z)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->ots:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/Gm;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/cJ;->cJ:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Gm;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;)V

    .line 108
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/component/cJ;->zc()Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/cJ;->ots:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Lcom/bytedance/adsdk/ugeno/core/Gm;->cJ(Lorg/json/JSONObject;)V

    .line 111
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;->Qhi(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/swiper/BaseSwiper;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->YB:Z

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/cJ;->fl:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/swiper/Swiper;->Qhi()V

    :cond_2
    :goto_1
    return-void
.end method
