.class public Lcom/bytedance/sdk/openadsdk/component/Sf;
.super Ljava/lang/Object;
.source "TTAppOpenAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;


# instance fields
.field private final CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Gm:Z

.field private final Qhi:Landroid/content/Context;

.field private ROR:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

.field private Sf:I

.field private Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

.field private final ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/tP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/tP<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private fl:I

.field private volatile hm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->fl:I

    .line 64
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->hm:I

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi:Landroid/content/Context;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi:Landroid/content/Context;

    .line 75
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP;

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->hm:I

    return p1
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/Sf;
    .locals 1

    .line 80
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/Sf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/core/model/CQU;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    return-object p0
.end method

.method private Qhi()V
    .locals 2

    .line 208
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Sf$2;

    const-string v1, "tryGetAppOpenAdFromCache"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/Sf;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Z)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V
    .locals 10

    .line 345
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->cJ()I

    move-result v0

    .line 346
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->ac()I

    move-result v1

    .line 349
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v0, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->fl:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 355
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/ROR;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    .line 357
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Gm:Z

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {p1, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    :cond_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_6

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ROR:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    const/4 v2, 0x0

    const/16 v5, 0x65

    if-eqz v0, :cond_3

    .line 365
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/fl;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v7

    if-ne v1, v5, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/component/fl;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 366
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ROR:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    invoke-interface {v6, v0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-ne v1, v5, :cond_4

    .line 374
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;J)V

    return-void

    :cond_4
    if-ne v1, v3, :cond_9

    .line 377
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    .line 378
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Gm:Z

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi:Z

    if-nez v0, :cond_9

    .line 382
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CQU(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 384
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    .line 387
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->fl:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 388
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    return-void

    :cond_6
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_9

    .line 393
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ROR:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    if-eqz v1, :cond_8

    .line 394
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->fl()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Tgh()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;->onError(ILjava/lang/String;)V

    .line 397
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-ne v0, v2, :cond_9

    .line 402
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->hm:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Sf:I

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(II)V

    :cond_9
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/Sf$3;

    invoke-direct {v2, p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/Sf;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$ac;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/Sf$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/Sf;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;)V

    return-void
.end method

.method private Qhi(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->fl:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->ROR(I)V

    .line 276
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CQU(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 277
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_1
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/component/ROR;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/Sf;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->fl:I

    return p0
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->hm:I

    .line 129
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/qMt;-><init>()V

    .line 130
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    .line 131
    iput v1, v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->CJ:I

    const/4 v1, 0x2

    .line 132
    iput v1, v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    .line 133
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/Sf$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Sf$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    const/4 v0, 0x3

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)I
    .locals 0

    .line 417
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 4

    .line 426
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 427
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    const/16 v0, 0x66

    const/16 v1, 0x2712

    .line 431
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IIILjava/lang/String;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/fl;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-gtz p3, :cond_1

    const/16 p3, 0xdac

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi:Z

    .line 100
    instance-of p1, p2, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    if-eqz p1, :cond_2

    .line 101
    check-cast p2, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->ROR:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->fl:I

    .line 105
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Sf:I

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    .line 107
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi:Z

    if-nez p1, :cond_3

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CQU(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi:Z

    if-nez p1, :cond_5

    .line 114
    new-instance p1, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    int-to-long p2, p3

    invoke-virtual {p1, v1, p2, p3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi()V

    :cond_5
    return-void
.end method
