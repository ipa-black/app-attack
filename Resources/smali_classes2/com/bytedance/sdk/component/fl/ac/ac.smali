.class public Lcom/bytedance/sdk/component/fl/ac/ac;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/WAv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;,
        Lcom/bytedance/sdk/component/fl/ac/ac$cJ;
    }
.end annotation


# instance fields
.field private volatile ABk:Z

.field private CJ:Ljava/lang/String;

.field private CQU:Lcom/bytedance/sdk/component/fl/cJ;

.field private Dww:Lcom/bytedance/sdk/component/fl/ac/Qhi;

.field private EBS:I

.field private Eh:I

.field private Gm:I

.field private HzH:I

.field private MQ:Z

.field private NFd:Ljava/util/concurrent/ExecutorService;

.field Qhi:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private ROR:Landroid/graphics/Bitmap$Config;

.field private Sf:I

.field private Tgh:Landroid/widget/ImageView$ScaleType;

.field private WAv:Lcom/bytedance/sdk/component/fl/hm;

.field private aP:Z

.field private ac:Ljava/lang/String;

.field private bxS:Lcom/bytedance/sdk/component/fl/ac/ROR;

.field private cJ:Ljava/lang/String;

.field private fl:Lcom/bytedance/sdk/component/fl/HzH;

.field private hm:I

.field private hpZ:Lcom/bytedance/sdk/component/fl/qMt;

.field private iMK:Z

.field private kYc:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/component/fl/CJ/pA;",
            ">;"
        }
    .end annotation
.end field

.field private lB:Lcom/bytedance/sdk/component/fl/pA;

.field private pA:Z

.field private pM:I

.field private qMt:Lcom/bytedance/sdk/component/fl/Sf;

.field private sDy:Z

.field private final tP:Landroid/os/Handler;

.field private zc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->kYc:Ljava/util/Queue;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->tP:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ:Z

    .line 131
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->cJ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;-><init>(Lcom/bytedance/sdk/component/fl/ac/ac;Lcom/bytedance/sdk/component/fl/HzH;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->fl:Lcom/bytedance/sdk/component/fl/HzH;

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ac(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    .line 135
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->CJ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Tgh:Landroid/widget/ImageView$ScaleType;

    .line 136
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->fl(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ROR:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Tgh(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Sf:I

    .line 138
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ROR(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->hm:I

    .line 140
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Sf(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Gm:I

    .line 142
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hm(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->HzH:I

    .line 144
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->WAv(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/qMt;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->hpZ:Lcom/bytedance/sdk/component/fl/qMt;

    .line 146
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->CQU:Lcom/bytedance/sdk/component/fl/cJ;

    .line 149
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Gm(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Gm(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ(Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Gm(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->zc(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->iMK:Z

    .line 156
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ABk(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->pA:Z

    .line 158
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->iMK(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->bxS:Lcom/bytedance/sdk/component/fl/ac/ROR;

    .line 159
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->pA(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/hm;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->WAv:Lcom/bytedance/sdk/component/fl/hm;

    .line 160
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hpZ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Eh:I

    .line 161
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->HzH(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->pM:I

    .line 163
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->kYc(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->NFd:Ljava/util/concurrent/ExecutorService;

    .line 164
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->tP(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->aP:Z

    .line 165
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->MQ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->sDy:Z

    .line 166
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->qMt(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/pA;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->lB:Lcom/bytedance/sdk/component/fl/pA;

    .line 168
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->kYc:Ljava/util/Queue;

    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/hm;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/CJ/hm;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;Lcom/bytedance/sdk/component/fl/ac/ac$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ac;-><init>(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/WAv;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Dww()Lcom/bytedance/sdk/component/fl/WAv;

    move-result-object p0

    return-object p0
.end method

.method private Dww()Lcom/bytedance/sdk/component/fl/WAv;
    .locals 4

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->bxS:Lcom/bytedance/sdk/component/fl/ac/ROR;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->fl:Lcom/bytedance/sdk/component/fl/HzH;

    if-eqz v0, :cond_0

    .line 340
    const-string v2, "not init !"

    const/16 v3, 0x3ed

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/fl/HzH;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->NFd:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 350
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/ac$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/fl/ac/ac$1;-><init>(Lcom/bytedance/sdk/component/fl/ac/ac;)V

    .line 389
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->sDy:Z

    if-eqz v2, :cond_3

    .line 390
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 391
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->NFd:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_4

    .line 392
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi:Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 394
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 398
    const-string v1, "ImageRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/cJ;
    .locals 1

    .line 172
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->EBS(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->EBS(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->bxS(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->bxS(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->Qhi(Ljava/io/File;)Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    return-object p1

    .line 180
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->ROR()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    return-object p1
.end method

.method private Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 404
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/iMK;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/fl/CJ/iMK;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/fl/CJ/iMK;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V

    .line 405
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->kYc:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ABk:Z

    return p0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/component/fl/ac/ac;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->tP:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/hm;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->WAv:Lcom/bytedance/sdk/component/fl/hm;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/component/fl/ac/ac;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Gm:I

    return p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/component/fl/ac/ac;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/qMt;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->hpZ:Lcom/bytedance/sdk/component/fl/qMt;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Ljava/util/Queue;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->kYc:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/component/fl/ac/ac;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/component/fl/ac/ac;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->HzH:I

    return p0
.end method


# virtual methods
.method public ABk()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->iMK:Z

    return v0
.end method

.method public CJ()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Tgh:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public EBS()Lcom/bytedance/sdk/component/fl/pA;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->lB:Lcom/bytedance/sdk/component/fl/pA;

    return-object v0
.end method

.method public Gm()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ROR:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public HzH()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->EBS:I

    return v0
.end method

.method public MQ()Lcom/bytedance/sdk/component/fl/cJ;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->CQU:Lcom/bytedance/sdk/component/fl/cJ;

    return-object v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->EBS:I

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/Sf;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->qMt:Lcom/bytedance/sdk/component/fl/Sf;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/Qhi;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Dww:Lcom/bytedance/sdk/component/fl/ac/Qhi;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->CJ:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ:Z

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ABk:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->kYc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ROR()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->pM:I

    return v0
.end method

.method public Sf()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Eh:I

    return v0
.end method

.method public Tgh()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ROR:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public WAv()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public ac()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->hm:I

    return v0
.end method

.method public bxS()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/fl/ac/ac;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/fl/ac/ac;->zc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Sf:I

    return v0
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ac:Ljava/lang/String;

    return-void
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public hm()Lcom/bytedance/sdk/component/fl/HzH;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->fl:Lcom/bytedance/sdk/component/fl/HzH;

    return-object v0
.end method

.method public hpZ()Lcom/bytedance/sdk/component/fl/Sf;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->qMt:Lcom/bytedance/sdk/component/fl/Sf;

    return-object v0
.end method

.method public iMK()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->pA:Z

    return v0
.end method

.method public kYc()Lcom/bytedance/sdk/component/fl/ac/Qhi;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Dww:Lcom/bytedance/sdk/component/fl/ac/Qhi;

    return-object v0
.end method

.method public pA()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ:Z

    return v0
.end method

.method public qMt()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->aP:Z

    return v0
.end method

.method public tP()Lcom/bytedance/sdk/component/fl/ac/ROR;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->bxS:Lcom/bytedance/sdk/component/fl/ac/ROR;

    return-object v0
.end method

.method public zc()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac;->Gm:I

    return v0
.end method
