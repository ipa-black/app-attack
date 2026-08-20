.class public Lcom/bytedance/sdk/component/widget/Qhi;
.super Ljava/lang/Object;
.source "ArbitrageOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private ABk:I

.field private final CJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private EBS:I

.field private Gm:J

.field private HzH:F

.field private MQ:Landroid/view/View$OnTouchListener;

.field Qhi:Lcom/bytedance/sdk/component/widget/Qhi$Qhi;

.field private volatile ROR:F

.field private volatile Sf:F

.field private final Tgh:Landroid/content/Context;

.field private WAv:F

.field private final ac:I

.field private final cJ:I

.field private final fl:I

.field private hm:F

.field private hpZ:Z

.field private final iMK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private kYc:F

.field private final pA:Landroid/os/Handler;

.field private qMt:Landroid/view/ViewConfiguration;

.field private tP:Ljava/lang/String;

.field private zc:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    .line 36
    iput v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    .line 41
    new-instance v0, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->pA:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/bytedance/sdk/component/widget/Qhi$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/Qhi$1;-><init>(Lcom/bytedance/sdk/component/widget/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi$Qhi;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->EBS:I

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Tgh:Landroid/content/Context;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->iMK:Ljava/util/List;

    if-ne p2, v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/pM;->Qhi(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->cJ:I

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    .line 91
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/pM;->Qhi(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->cJ:I

    :goto_0
    int-to-float p2, p3

    .line 93
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/pM;->Qhi(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ac:I

    .line 94
    iput-object p4, p0, Lcom/bytedance/sdk/component/widget/Qhi;->CJ:Ljava/util/List;

    .line 95
    iput p5, p0, Lcom/bytedance/sdk/component/widget/Qhi;->fl:I

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/component/widget/Qhi;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ROR:F

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/widget/Qhi;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/widget/Qhi;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    return p1
.end method

.method private Qhi(FFJ)I
    .locals 15

    move-object v0, p0

    .line 191
    iget v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->zc:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 195
    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->CJ:Ljava/util/List;

    iget v2, v0, Lcom/bytedance/sdk/component/widget/Qhi;->ABk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mInterceptorPageList: "

    const-string v4, "mPageIndex:"

    filled-new-array {v3, v1, v4, v2}, [Ljava/lang/Object;

    .line 196
    iget-object v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->CJ:Ljava/util/List;

    iget v2, v0, Lcom/bytedance/sdk/component/widget/Qhi;->ABk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    return v1

    .line 200
    :cond_1
    iget-wide v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->zc:J

    sub-long v1, p3, v1

    .line 201
    iget v3, v0, Lcom/bytedance/sdk/component/widget/Qhi;->fl:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ()V

    const/4 v1, 0x3

    return v1

    .line 207
    :cond_2
    iget v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 208
    iget v2, v0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 210
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v3, v0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, " ,x distance\uff1a"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v3, "mTouchX: "

    const-string v5, ", mTriggerX : "

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 211
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v3, v0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, " ,y distance\uff1a"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const-string v9, "mTouchY: "

    const-string v11, ", mTriggerY: "

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    .line 212
    iget v3, v0, Lcom/bytedance/sdk/component/widget/Qhi;->cJ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/bytedance/sdk/component/widget/Qhi;->ac:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "mInterceptorXPx: "

    const-string v6, ", mInterceptorYPx: "

    filled-new-array {v5, v3, v6, v4}, [Ljava/lang/Object;

    .line 214
    iget v3, v0, Lcom/bytedance/sdk/component/widget/Qhi;->cJ:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_4

    iget v1, v0, Lcom/bytedance/sdk/component/widget/Qhi;->ac:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return v1

    .line 216
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ()V

    const/4 v1, 0x4

    return v1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/widget/Qhi;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ABk:I

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/widget/Qhi;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->zc:J

    return-wide p1
.end method

.method private Qhi(Landroid/view/View;Landroid/view/MotionEvent;IZ)V
    .locals 3

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 150
    check-cast p1, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    :goto_0
    :try_start_0
    const-string v1, "arbi_current_url"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string p1, "click_x"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 155
    const-string p1, "click_y"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    const-string p1, "is_interceptor"

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string p1, "is_first_click"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string p1, "click_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    const-string p1, "arbi_interceptor_type"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    const-string p1, "current_url_index"

    iget p2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ABk:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :catchall_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x64

    .line 164
    iput p2, p1, Landroid/os/Message;->what:I

    .line 165
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->pA:Landroid/os/Handler;

    const-wide/16 p3, 0xc8

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private Qhi(FF)Z
    .locals 10

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->qMt:Landroid/view/ViewConfiguration;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Tgh:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->qMt:Landroid/view/ViewConfiguration;

    .line 173
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->EBS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->qMt:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->EBS:I

    .line 176
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->EBS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mTouchSlop is: "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 177
    iget v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->HzH:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->EBS:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->kYc:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->EBS:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 178
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->HzH:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->kYc:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v1, "isClick"

    const-string v2, "upX: "

    const-string v4, " ,downX: "

    const-string v6, " ,upY: "

    const-string v8, "downY: "

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 181
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->HzH:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->kYc:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v0, "notClick"

    const-string v1, "upX: "

    const-string v3, " ,downX: "

    const-string v5, " ,upY: "

    const-string v7, "downY: "

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/widget/Qhi;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hpZ:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/component/widget/Qhi;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ()V

    return-void
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/component/widget/Qhi;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Gm:J

    return-wide v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/widget/Qhi;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->zc:J

    return-wide v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/widget/Qhi;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/widget/Qhi;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    return p1
.end method

.method private cJ()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 225
    iput v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hm:F

    .line 226
    iput v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->WAv:F

    const-wide/16 v0, -0x1

    .line 227
    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->zc:J

    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/component/widget/Qhi;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Sf:F

    return p0
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/widget/Qhi$Qhi;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi$Qhi;

    return-object v0
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 3

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    .line 233
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 236
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 237
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 239
    :try_start_0
    const-string p1, "is_trigger_jump"

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hpZ:Z

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->hpZ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :catchall_0
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->cJ()Lcom/bytedance/sdk/component/widget/Qhi/cJ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 245
    invoke-static {}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->cJ()Lcom/bytedance/sdk/component/widget/Qhi/cJ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->tP:Ljava/lang/String;

    const-string v2, "arbitrage_click_event"

    invoke-interface {p1, v0, v2, v1}, Lcom/bytedance/sdk/component/widget/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public Qhi(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->MQ:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->tP:Ljava/lang/String;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v1, "action: "

    const-string v3, ", x: "

    const-string v5, ",y: "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Gm:J

    .line 107
    iput v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ROR:F

    .line 108
    iput v2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Sf:F

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "upY: "

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "ACTION_UP: "

    const-string v7, "upX: "

    filled-new-array {v6, v7, v0, v4, v5}, [Ljava/lang/Object;

    .line 118
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ROR:F

    iget v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Sf:F

    iget-wide v4, p0, Lcom/bytedance/sdk/component/widget/Qhi;->Gm:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(FFJ)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->iMK:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ABk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 121
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Landroid/view/View;Landroid/view/MotionEvent;IZ)V

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->iMK:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->ABk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 126
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 112
    :cond_2
    iput v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->HzH:F

    .line 113
    iput v2, p0, Lcom/bytedance/sdk/component/widget/Qhi;->kYc:F

    .line 114
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/widget/Qhi;->kYc:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ACTION_DOWN: "

    const-string v3, "downX: "

    const-string v4, "downY: "

    filled-new-array {v2, v3, v0, v4, v1}, [Ljava/lang/Object;

    .line 131
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi;->MQ:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_4

    .line 133
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
