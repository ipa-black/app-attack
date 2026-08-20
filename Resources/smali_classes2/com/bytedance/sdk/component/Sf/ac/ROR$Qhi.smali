.class public Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
.super Ljava/lang/Object;
.source "PagThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Sf/ac/ROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:I

.field private Gm:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Qhi:Ljava/lang/String;

.field private ROR:Ljava/util/concurrent/TimeUnit;

.field private Sf:I

.field private Tgh:Z

.field private WAv:Z

.field private ac:I

.field private cJ:I

.field private fl:J

.field private hm:I

.field private zc:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-string v0, "cache"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi:Ljava/lang/String;

    const/4 v0, 0x4

    .line 349
    iput v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    const/16 v0, 0x64

    .line 350
    iput v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ:I

    const-wide/16 v1, 0x7530

    .line 353
    iput-wide v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl:J

    .line 355
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Tgh:Z

    .line 356
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    const/4 v1, -0x1

    .line 358
    iput v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf:I

    const/16 v1, 0x14

    .line 360
    iput v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    .line 362
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv:Z

    .line 364
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->zc:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Tgh:Z

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    return p0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    return p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ:I

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/lang/String;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv:Z

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl:J

    return-wide v0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->zc:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    return p0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf:I

    return p0
.end method


# virtual methods
.method public CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 406
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    return-object p0
.end method

.method public Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 374
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    return-object p0
.end method

.method public Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 389
    iput-wide p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl:J

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 394
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Tgh:Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->zc:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/bytedance/sdk/component/Sf/ac/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Sf/ac/fl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->zc:Ljava/util/concurrent/ThreadFactory;

    .line 427
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    if-gez v0, :cond_1

    const/16 v0, 0x8

    .line 428
    iput v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    .line 431
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    if-nez v0, :cond_2

    .line 432
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm:Ljava/util/concurrent/BlockingQueue;

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_3

    .line 436
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm:Ljava/util/concurrent/BlockingQueue;

    .line 439
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    .line 440
    iput v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    .line 443
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    iget v2, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ:I

    if-ge v0, v2, :cond_5

    .line 444
    iput v2, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    .line 446
    :cond_5
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    if-gez v0, :cond_6

    const/16 v0, 0x14

    .line 447
    iput v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    .line 450
    :cond_6
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    if-le v0, v1, :cond_7

    .line 451
    iput v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm:I

    .line 453
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/component/Sf/ac/ROR;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR;-><init>(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;Lcom/bytedance/sdk/component/Sf/ac/ROR$1;)V

    return-object v0
.end method

.method public ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 384
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ:I

    return-object p0
.end method

.method public cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 379
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac:I

    return-object p0
.end method

.method public cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv:Z

    return-object p0
.end method

.method public fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 0

    .line 412
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf:I

    return-object p0
.end method
