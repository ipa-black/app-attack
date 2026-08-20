.class public Lcom/bytedance/sdk/openadsdk/core/model/HzH;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

.field CJ:Landroid/widget/FrameLayout;

.field private CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

.field private Dq:I

.field private Dww:Landroid/widget/FrameLayout;

.field private EBS:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field private Eh:Landroid/widget/ImageView;

.field private FQ:Z

.field Gm:Landroid/animation/ObjectAnimator;

.field private Hf:Lcom/bytedance/sdk/openadsdk/common/cJ;

.field private HzH:Landroid/view/View;

.field private final Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

.field private MND:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private MQ:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private NFd:J

.field private final PAe:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Qe:I

.field Qhi:Landroid/widget/ImageView;

.field final ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field Sf:Landroid/widget/FrameLayout;

.field Tgh:Landroid/widget/RelativeLayout;

.field WAv:Landroid/animation/ObjectAnimator;

.field private volatile YB:I

.field private aP:Landroid/view/View;

.field ac:Landroid/widget/TextView;

.field private bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

.field cJ:Landroid/widget/FrameLayout;

.field private cjC:I

.field private volatile dIT:I

.field private es:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

.field fl:Landroid/view/View;

.field hm:Landroid/animation/ObjectAnimator;

.field private hpZ:Landroid/view/View;

.field iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

.field private ip:Z

.field private jPH:Ljava/lang/String;

.field private final js:Landroid/view/View;

.field private kYc:Landroid/widget/TextView;

.field private final lB:Landroid/app/Activity;

.field private lG:Ljava/lang/String;

.field private pA:Landroid/os/Handler;

.field private pM:Landroid/view/View;

.field private qMt:Landroid/widget/TextView;

.field private final sDy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private tP:Landroid/widget/TextView;

.field private xyz:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

.field private yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

.field zc:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

.field private zn:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Landroid/view/View;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->sDy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->PAe:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->dIT:I

    .line 141
    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qe:I

    .line 142
    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->YB:I

    .line 148
    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lB:Landroid/app/Activity;

    .line 149
    iput-object v8, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-object/from16 v1, p3

    .line 150
    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    move-object/from16 v2, p5

    .line 151
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    move-object/from16 v2, p6

    .line 152
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    .line 153
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zn:I

    if-eqz v8, :cond_0

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->jPH:Ljava/lang/String;

    .line 157
    :cond_0
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->jPH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->cJ()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v2

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MND:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v2

    iget-object v3, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MND:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->jPH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cjC:I

    if-lez v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v10

    .line 160
    :goto_0
    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dq:I

    .line 162
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v11

    .line 163
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v12

    .line 164
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    const-string v2, "landingpage_split_screen"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_4

    .line 167
    const-string v2, "landingpage_direct"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz v12, :cond_5

    .line 169
    const-string v2, "aggregate_page"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    .line 171
    :cond_5
    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    .line 172
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    .line 173
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "click_scence"

    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v2, v13}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Ljava/util/Map;)V

    const v2, 0x1020002

    .line 176
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 177
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Landroid/view/View;)V

    .line 178
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;

    iget-object v5, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    .line 179
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;IZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object v15, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    .line 192
    invoke-virtual {v15, v13}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Ljava/util/Map;)V

    .line 193
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v0, v14}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/view/View;)V

    move-object/from16 v0, p4

    .line 194
    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf:Landroid/widget/FrameLayout;

    if-nez v11, :cond_6

    if-eqz v12, :cond_7

    .line 197
    :cond_6
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA:Landroid/os/Handler;

    const/16 v1, 0x64

    .line 198
    invoke-virtual {v0, v1, v10, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception v0

    .line 201
    const-string v1, "LandingPageModel"

    const-string v2, "LandingPageModel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->jPH:Ljava/lang/String;

    return-object p0
.end method

.method private ABk()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lB:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Gm()V

    .line 557
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->zc()V

    :cond_1
    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    return-object p0
.end method

.method public static CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p0

    const/16 v1, 0x21

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic CQU(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Landroid/view/View;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM:Landroid/view/View;

    return-object p0
.end method

.method static synthetic Dww(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Landroid/widget/FrameLayout;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dww:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic EBS(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object p0
.end method

.method private Gm()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 491
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "timeVisible"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 493
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HzH$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->WAv()V

    return-void
.end method

.method static synthetic HzH(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 2

    .line 92
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->YB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->YB:I

    return v0
.end method

.method static synthetic MQ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->es:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;J)J
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->NFd:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->xyz:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ip:Z

    return p1
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 470
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cjC:I

    return p0
.end method

.method public static ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p0

    const/16 v0, 0x14

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->YB:I

    return p0
.end method

.method private Sf()V
    .locals 12

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/webkit/WebView;)V

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/model/HzH$9;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dq:I

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/cJ/zc;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/cJ/Gm;I)V

    .line 295
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    .line 296
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lB:Landroid/app/Activity;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Hf:Lcom/bytedance/sdk/openadsdk/common/cJ;

    if-eqz v0, :cond_0

    .line 299
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hm()V

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPage(Z)V

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ne()Lcom/bytedance/sdk/component/widget/cJ/Qhi;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMaterialMeta(Lcom/bytedance/sdk/component/widget/cJ/Qhi;)V

    .line 307
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->EBS:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 308
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Hf:Lcom/bytedance/sdk/openadsdk/common/cJ;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    const/4 v11, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->xyz:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    .line 371
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->xyz:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->xyz:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->EBS:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Hf:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->es:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-nez v0, :cond_2

    .line 389
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->es:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/HzH$12;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const/16 v4, 0x183e

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/HzH;->Qhi(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HzH$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dq:I

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/tP;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    .line 437
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->FQ:Z

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_4

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    if-eqz v0, :cond_4

    .line 441
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;->Qhi()V

    :cond_4
    return-void
.end method

.method public static Sf(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p0

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zc()V

    return-void
.end method

.method public static Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mz()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 745
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->dIT:I

    return p0
.end method

.method private WAv()V
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->sDy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->PAe:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->sDy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->NFd:J

    sub-long/2addr v3, v5

    .line 481
    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;JZ)V

    .line 483
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->sDy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 719
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 723
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 724
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 725
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method static synthetic bxS(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/common/cJ;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Hf:Lcom/bytedance/sdk/openadsdk/common/cJ;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ip:Z

    return p0
.end method

.method public static cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 707
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 709
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->NFd:J

    return-wide v0
.end method

.method public static fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    .line 740
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qe:I

    return p0
.end method

.method private hm()V
    .locals 2

    .line 447
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lB:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->EBS:Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 448
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 449
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 450
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 451
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 452
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zn:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 453
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(I)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 455
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bIO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 456
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HzH$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    .line 457
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    return-void
.end method

.method public static hm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 780
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->bxS()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 2

    .line 92
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qe:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qe:I

    return v0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I
    .locals 2

    .line 92
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->dIT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->dIT:I

    return v0
.end method

.method private iMK()V
    .locals 6

    .line 570
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Eh:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "translationY"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 573
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hm:Landroid/animation/ObjectAnimator;

    .line 574
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hm:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hm:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 578
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM:Landroid/view/View;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/HzH$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 607
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi:Landroid/widget/ImageView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/HzH$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 620
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 625
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi()Lcom/bytedance/sdk/component/fl/hpZ;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/component/fl/hpZ;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 627
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 628
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v2

    .line 629
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v2

    .line 630
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v2

    .line 631
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/HzH$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/hm;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    .line 639
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x0
    .end array-data
.end method

.method static synthetic kYc(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lB:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MND:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method private pA()Z
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    return v0
.end method

.method static synthetic pM(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Z
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA()Z

    move-result p0

    return p0
.end method

.method static synthetic qMt(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/cJ/zc;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    return-object p0
.end method

.method static synthetic tP(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    return-object p0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    return-object p0
.end method

.method private zc()V
    .locals 8

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->sDy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk()V

    .line 511
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->PAe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Sf()V

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;->cJ()V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    const-string v7, "show_agg_backup"

    invoke-static {v0, v1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->HzH:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 522
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->HzH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 524
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 525
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 526
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->HzH:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 528
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/HzH$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hpZ:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hpZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 537
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 538
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 539
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hpZ:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 541
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac()I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MQ:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->kYc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->tP:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zjb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 546
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ()V

    .line 547
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dww:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 786
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->aP:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 788
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Qhi()V
    .locals 11

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->qMt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->g_()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MQ:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dww:Landroid/widget/FrameLayout;

    .line 219
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->CQU:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    .line 220
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->EBS:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM:Landroid/view/View;

    .line 221
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->bxS:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Eh:Landroid/widget/ImageView;

    .line 222
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Jma:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->aP:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->kYc:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ:Landroid/widget/FrameLayout;

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->tP:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi:Landroid/widget/ImageView;

    .line 225
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Dww:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh:Landroid/widget/RelativeLayout;

    .line 226
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->czB:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac:Landroid/widget/TextView;

    .line 227
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->WAv:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ:Landroid/widget/FrameLayout;

    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->pM:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hpZ:Landroid/view/View;

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->zn:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hpZ:Landroid/view/View;

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lB:Landroid/app/Activity;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Eh:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->HzH:Landroid/view/View;

    .line 233
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->NFd:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->kYc:Landroid/widget/TextView;

    .line 234
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->sDy:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->tP:Landroid/widget/TextView;

    .line 235
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->aP:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MQ:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 236
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->lB:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt:Landroid/widget/TextView;

    .line 237
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->fl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->js:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->lG:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->fl:Landroid/view/View;

    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->fl:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac()J

    move-result-wide v3

    goto :goto_1

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi()J

    move-result-wide v3

    .line 252
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v1

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf()V

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 266
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK()V

    .line 267
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dww:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x40151eb8    # 2.33f

    .line 269
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 270
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Dww:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->aP:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    if-eqz v1, :cond_a

    .line 277
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 279
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v5, v1, v3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->lG:Ljava/lang/String;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MND:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->jPH:Ljava/lang/String;

    invoke-static/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(F)V
    .locals 0

    .line 692
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->hm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zc:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-void
.end method

.method public ROR()V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Sf()V

    :cond_0
    return-void
.end method

.method public Tgh()V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->EBS:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->WAv()V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ROR()V

    :cond_1
    return-void
.end method

.method public ac()Z
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 684
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected cJ()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ots()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ots()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public fl()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->WAv:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 803
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->WAv:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 806
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CQU:Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    if-eqz v0, :cond_4

    .line 810
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;->cJ()V

    .line 812
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hm:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 813
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_6

    .line 816
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/lG;->Qhi(Landroid/webkit/WebView;)V

    .line 818
    :cond_6
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 820
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->EBS:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_7

    .line 821
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm()V

    .line 824
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->yN:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 825
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac(Z)V

    .line 828
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->jPH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->FQ:Z

    if-eqz v0, :cond_9

    .line 829
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qe:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->dIT:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi;->Qhi(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 831
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MND:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 856
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_4

    .line 858
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ()J

    move-result-wide v3

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x14

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zc:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_2

    int-to-long v7, p1

    mul-long/2addr v7, v5

    mul-long v9, v3, v5

    .line 866
    invoke-interface {v0, v7, v8, v9, v10}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JJ)V

    :cond_2
    int-to-long v7, p1

    cmp-long v0, v7, v3

    if-ltz v0, :cond_3

    .line 870
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zc:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    if-eqz p1, :cond_4

    mul-long/2addr v3, v5

    .line 871
    invoke-interface {p1, v3, v4, v2}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JI)V

    goto :goto_1

    :cond_3
    if-gez v0, :cond_4

    .line 873
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 874
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 875
    iput v2, v0, Landroid/os/Message;->what:I

    add-int/2addr p1, v1

    .line 876
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 877
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA:Landroid/os/Handler;

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return v1
.end method
