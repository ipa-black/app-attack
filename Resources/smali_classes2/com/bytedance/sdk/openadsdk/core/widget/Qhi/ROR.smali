.class public Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;
.super Ljava/lang/Object;
.source "WebArbitrageBehavior.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;
    }
.end annotation


# instance fields
.field ABk:F

.field CJ:Landroid/webkit/WebView;

.field CQU:Landroid/view/GestureDetector;

.field Dww:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

.field EBS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final Eh:Ljava/lang/String;

.field Gm:F

.field HzH:Z

.field MQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private NFd:J

.field Qhi:Landroid/content/Context;

.field ROR:Z

.field Sf:Z

.field Tgh:I

.field WAv:I

.field private final aP:Ljava/lang/String;

.field ac:Ljava/lang/String;

.field bxS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field fl:I

.field hm:Ljava/lang/String;

.field hpZ:J

.field iMK:F

.field kYc:Z

.field pA:F

.field private final pM:Landroid/os/Handler;

.field qMt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private sDy:Z

.field tP:J

.field zc:F


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->pM:Landroid/os/Handler;

    .line 60
    const-string v0, "landingpage"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Tgh:I

    .line 82
    const-string v0, ".*\\/serp\\?sc=.*&clkt=\\d+$"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Eh:Ljava/lang/String;

    .line 83
    const-string v0, ".*\\/\\?caf_results=.*&clkt=\\d+$"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->aP:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Dww:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    .line 97
    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CQU:Landroid/view/GestureDetector;

    .line 108
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    .line 110
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi:Landroid/content/Context;

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->rB()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->fl:I

    .line 112
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->MQ:Ljava/util/Map;

    .line 113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->qMt:Ljava/util/Map;

    .line 114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->EBS:Ljava/util/Map;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->bxS:Ljava/util/List;

    return-void
.end method

.method private CJ()V
    .locals 4

    .line 297
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    .line 303
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Gm:F

    .line 304
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->zc:F

    .line 305
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->fl(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->pA:F

    .line 306
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Tgh(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->tP:J

    long-to-float v1, v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->ROR(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    move-result-object v0

    .line 309
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x64

    .line 310
    iput v2, v1, Landroid/os/Message;->what:I

    .line 311
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->pM:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private CJ(Ljava/lang/String;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->NFd:J

    return-wide p1
.end method

.method private Qhi(ILjava/lang/String;I)V
    .locals 6

    .line 268
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 273
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->MQ:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 279
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->qMt:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 286
    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;-><init>()V

    .line 287
    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p2

    .line 288
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p2

    sub-long/2addr v0, v2

    long-to-float p3, v0

    .line 289
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Sf(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p2

    .line 290
    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->hm(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p2

    .line 291
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->cJ(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    move-result-object p1

    .line 293
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Tgh()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;ILjava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(ILjava/lang/String;I)V

    return-void
.end method

.method private ROR()Z
    .locals 3

    .line 374
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Tgh:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Tgh:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->fl:I

    if-le v0, v2, :cond_0

    return v1

    .line 377
    :cond_0
    const-string v0, "landingpage"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_endcard"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_split_screen"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "landingpage_direct"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private Sf()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    .line 401
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "trigger onPageStarted, and index is: "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    return-void
.end method

.method private Tgh()V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->qMt:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    :cond_1
    move v1, v0

    .line 369
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "initBrowsingPer, browsingPer is: "

    const-string v4, "index is: "

    filled-new-array {v3, v0, v4, v2}, [Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->qMt:Ljava/util/Map;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ac(I)V
    .locals 3

    .line 316
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Tgh()V

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR:Z

    .line 321
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    .line 322
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    .line 323
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Gm:F

    .line 324
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->zc:F

    .line 325
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->tP:J

    long-to-float v1, v1

    .line 326
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    move-result-object p1

    .line 330
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->sDy:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Qhi(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Qhi(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :catchall_0
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc8

    .line 339
    iput v1, v0, Landroid/os/Message;->what:I

    .line 340
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->pM:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Sf()V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->NFd:J

    return-wide v0
.end method

.method private cJ(I)V
    .locals 5

    .line 244
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->bxS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->bxS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 253
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->EBS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    .line 259
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    .line 260
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    .line 261
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p1

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 262
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->WAv(F)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    move-result-object p1

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V

    return-void
.end method

.method private cJ(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ABk:F

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->iMK:F

    .line 388
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->zc:F

    sub-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sub-float/2addr p1, v0

    .line 389
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->pA:F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private fl()Z
    .locals 2

    .line 346
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, ".*\\/serp\\?sc=.*&clkt=\\d+$"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".*\\/\\?caf_results=.*&clkt=\\d+$"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    .line 347
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 351
    const-string v1, "WebArbitrageBehavior"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ(I)V

    return-void
.end method

.method public Qhi(I)V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->qMt:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 150
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v1, "onScrollChange, oldPerUnBox is:"

    const-string v3, ", browsingPer is:"

    const-string v5, ", index is: "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->qMt:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 4

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    .line 407
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 410
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->HzH:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->CJ(I)V

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V

    .line 413
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->HzH:Z

    return-void

    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 417
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->kYc:Z

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->CJ()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(ILjava/lang/String;I)V

    .line 421
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->kYc:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ac(I)V

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V

    .line 424
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR:Z

    .line 425
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->kYc:Z

    :cond_3
    return-void
.end method

.method public Qhi(Landroid/view/MotionEvent;)V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CQU:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 210
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac(I)V

    return-void

    .line 214
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 215
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hpZ:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->tP:J

    .line 216
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ()V

    return-void

    .line 220
    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac(I)V

    :goto_0
    return-void

    .line 205
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Gm:F

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->zc:F

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hpZ:J

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac:Ljava/lang/String;

    return-void
.end method

.method public ac()Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Dww:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    return-object v0
.end method

.method public ac(Ljava/lang/String;)V
    .locals 3

    .line 187
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ROR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 188
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->kYc:Z

    .line 190
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "query="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 192
    const-string v1, "&"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-le v1, v0, :cond_1

    .line 194
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public cJ()V
    .locals 2

    .line 157
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->CJ:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 3

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Sf()V

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->MQ:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->EBS:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->fl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->sDy:Z

    return-void
.end method
