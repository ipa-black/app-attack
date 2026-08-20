.class public Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$Qhi;
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$ROR;
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$Sf;
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$Tgh;
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$ac;
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$cJ;
.implements Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$fl;
.implements Lcom/bykv/vk/openvk/component/video/api/Qhi;
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;
    }
.end annotation


# static fields
.field private static final Dww:Landroid/util/SparseIntArray;


# instance fields
.field private ABk:Lcom/bytedance/sdk/component/utils/CQU;

.field private CJ:I

.field private CQU:Z

.field private EBS:I

.field private Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

.field private FQ:Z

.field private volatile Gm:I

.field private HzH:J

.field private final Jma:Ljava/lang/Runnable;

.field private MQ:Z

.field private NFd:Ljava/util/concurrent/CountDownLatch;

.field private Qhi:Landroid/graphics/SurfaceTexture;

.field private final ROR:Z

.field private Sf:Z

.field private volatile Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

.field private WAv:Z

.field private aP:Z

.field private ac:I

.field private bxS:Ljava/lang/String;

.field private cJ:Landroid/view/SurfaceHolder;

.field private es:J

.field private fl:Z

.field private hm:Z

.field private hpZ:J

.field private iMK:Z

.field private final js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

.field private kYc:J

.field private lB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lG:Landroid/view/Surface;

.field private pA:J

.field private final pM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;",
            ">;>;"
        }
    .end annotation
.end field

.field private qMt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sDy:I

.field private tP:J

.field private yN:J

.field private zc:J

.field private volatile zn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    .line 83
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->fl:Z

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    .line 86
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ROR:Z

    .line 88
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf:Z

    const/16 v2, 0xc9

    .line 92
    iput v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const-wide/16 v2, -0x1

    .line 93
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    .line 98
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    const-wide/16 v2, 0x0

    .line 99
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    const-wide/high16 v4, -0x8000000000000000L

    .line 101
    iput-wide v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ:J

    .line 102
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    .line 103
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->kYc:J

    .line 105
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->tP:J

    .line 109
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    .line 112
    const-string v4, "0"

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->bxS:Ljava/lang/String;

    .line 116
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    .line 118
    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    .line 119
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->aP:Z

    .line 120
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd:Ljava/util/concurrent/CountDownLatch;

    const/16 v4, 0xc8

    .line 123
    iput v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->sDy:I

    .line 126
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lG:Landroid/view/Surface;

    .line 130
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$1;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    .line 383
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    .line 1290
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->es:J

    .line 1291
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->yN:J

    .line 1294
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    .line 199
    const-string v0, "SSMediaPlayerWrapper"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic CJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    return-wide v0
.end method

.method static synthetic CJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    return-wide p1
.end method

.method static synthetic CJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->aP:Z

    return p1
.end method

.method private CQU()V
    .locals 4

    .line 986
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 988
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 990
    :cond_0
    iget v3, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private Dww()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/CQU;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$6;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$6;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private EBS()V
    .locals 1

    .line 509
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$14;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$14;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Eh()V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_0

    .line 1174
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic Gm(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt()V

    return-void
.end method

.method private MQ()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 216
    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    const/4 v2, 0x0

    .line 217
    iput v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    .line 218
    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    .line 219
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 220
    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ:J

    return-void
.end method

.method private NFd()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->aP()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    return p1
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;)Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Lcom/bytedance/sdk/component/utils/CQU;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->bxS:Ljava/lang/String;

    return-object p1
.end method

.method private Qhi(JJ)V
    .locals 8

    .line 191
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(II)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;JJ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(JJ)V

    return-void
.end method

.method private Qhi(Ljava/lang/Runnable;)V
    .locals 1

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private Qhi(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    .line 208
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/Sf/Qhi/Qhi;

    move-result-object v0

    const-string v1, "csj_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/Sf/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/utils/CQU$Qhi;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    .line 211
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt()V

    return-void
.end method

.method private Qhi(II)Z
    .locals 2

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    return p0
.end method

.method static synthetic Sf(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    return-wide v0
.end method

.method static synthetic WAv(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    return-wide v0
.end method

.method private aP()V
    .locals 2

    .line 1213
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1216
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hm:Z

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1218
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1219
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1222
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hm:Z

    return-void
.end method

.method static synthetic ac(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ:J

    return-wide p1
.end method

.method static synthetic ac(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    return p0
.end method

.method static synthetic ac(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    return p1
.end method

.method private bxS()V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-nez v0, :cond_0

    return-void

    .line 923
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->zc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :catchall_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$cJ;)V

    .line 928
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$Sf;)V

    .line 929
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$Qhi;)V

    .line 930
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$fl;)V

    .line 931
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$ac;)V

    .line 932
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$Tgh;)V

    .line 933
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ$ROR;)V

    .line 935
    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Gm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method static synthetic cJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ:J

    return-wide v0
.end method

.method static synthetic cJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    return-wide p1
.end method

.method private cJ(II)V
    .locals 8

    const/16 p2, 0x2bd

    const v0, 0x7fffffff

    .line 1080
    const-string v1, "bufferCount = "

    if-ne p1, p2, :cond_2

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->es:J

    .line 1082
    iget p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    .line 1084
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 1085
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1086
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    const/4 v2, 0x0

    invoke-interface {p2, p0, v0, v2, v2}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;III)V

    goto :goto_0

    .line 1089
    :cond_1
    iget p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    return-void

    :cond_2
    const/16 p2, 0x2be

    if-ne p1, p2, :cond_6

    .line 1091
    iget-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->es:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_3

    .line 1092
    iget-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->yN:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->es:J

    sub-long/2addr v4, v6

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->yN:J

    .line 1093
    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->es:J

    .line 1096
    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    .line 1097
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1098
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {p2, p0, v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V

    goto :goto_1

    .line 1101
    :cond_5
    iget p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->yN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, " mBufferTotalTime = "

    filled-new-array {v1, p1, v0, p2}, [Ljava/lang/Object;

    return-void

    .line 1103
    :cond_6
    iget-boolean p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 1109
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd()V

    .line 1111
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM()V

    .line 1112
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->aP:Z

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Z)V

    :cond_7
    return-void
.end method

.method private cJ(J)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;->Qhi(J)V

    .line 339
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->CQU:Z

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    return-void

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    return-void

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cJ(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1250
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->WAv:Z

    if-nez v0, :cond_1

    .line 1254
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1256
    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private cJ(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 914
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 915
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Ljava/io/FileDescriptor;)V

    .line 916
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method static synthetic cJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf:Z

    return p1
.end method

.method private cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic fl(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->sDy:I

    return p0
.end method

.method static synthetic hm(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    return-object p0
.end method

.method private pM()V
    .locals 5

    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->tP:J

    sub-long/2addr v0, v2

    .line 1163
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 1164
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1165
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v3, p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1168
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->fl:Z

    return-void
.end method

.method private qMt()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$10;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$10;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private sDy()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ABk()Z
    .locals 2

    .line 645
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public CJ()I
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->ABk()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Gm()V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_6

    const/16 v1, 0x64

    .line 427
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    .line 429
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    const/16 v1, 0x65

    if-nez v0, :cond_3

    .line 431
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->MQ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 438
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$12;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$12;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Ljava/lang/Runnable;)V

    return-void

    .line 433
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessage(I)Z

    return-void

    .line 448
    :cond_3
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->fl:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 455
    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$13;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$13;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 450
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_6

    .line 451
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public HzH()J
    .locals 4

    .line 1372
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 1375
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v3, 0xce

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v3, 0xcf

    if-ne v0, v3, :cond_2

    .line 1377
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->hm()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_2
    return-wide v1
.end method

.method public Qhi(I)V
    .locals 1

    .line 1429
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1432
    :cond_0
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->sDy:I

    return-void
.end method

.method public Qhi(J)V
    .locals 2

    .line 536
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_2

    .line 541
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$2;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;J)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public Qhi(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 558
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 561
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 562
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Z)V

    .line 563
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$3;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$3;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 661
    iget v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 662
    iget v3, v1, Landroid/os/Message;->what:I

    .line 664
    iget-object v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-eqz v4, :cond_11

    .line 665
    iget v4, v1, Landroid/os/Message;->what:I

    const-wide/16 v5, 0x1

    const/16 v7, 0xcb

    const/16 v10, 0xc9

    const/16 v11, 0xca

    const/16 v12, 0xcd

    const/16 v13, 0xd0

    const/4 v14, 0x1

    const/16 v15, 0xd1

    const/16 v8, 0xce

    const/16 v9, 0xcf

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 848
    :pswitch_1
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 849
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lG:Landroid/view/Surface;

    .line 850
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lG:Landroid/view/Surface;

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Landroid/view/Surface;)V

    .line 852
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->cJ(Z)V

    .line 854
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd()V

    goto/16 :goto_5

    .line 863
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    .line 864
    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Landroid/view/SurfaceHolder;)V

    .line 868
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->cJ(Z)V

    .line 869
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_5

    .line 791
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->MQ()V

    .line 792
    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v4, v10, :cond_0

    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-ne v4, v7, :cond_c

    .line 794
    :cond_0
    :try_start_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    .line 796
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ac;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;)V

    .line 801
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 804
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 806
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ac;->ac()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_2
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_3
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    .line 815
    iget v2, v1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ:I

    .line 820
    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    .line 821
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    .line 835
    :goto_0
    iput v11, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    .line 777
    :pswitch_4
    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v4, v8, :cond_4

    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v4, v9, :cond_4

    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-ne v4, v15, :cond_c

    .line 780
    :cond_4
    :try_start_2
    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->CJ:I

    invoke-interface {v2, v3, v4, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    .line 879
    :pswitch_5
    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v12, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v8, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v13, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v9, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-ne v1, v15, :cond_c

    .line 882
    :cond_5
    :try_start_3
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Tgh()V

    .line 883
    iput v13, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_5

    .line 730
    :pswitch_6
    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v11, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-ne v1, v13, :cond_c

    .line 732
    :cond_6
    :try_start_4
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Sf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    .line 745
    :pswitch_7
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->bxS()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 750
    :catchall_0
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_7

    .line 751
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 752
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->ac(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_1

    .line 755
    :cond_8
    iput v7, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    goto/16 :goto_5

    .line 767
    :pswitch_8
    :try_start_6
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->zc()V

    .line 769
    iput v10, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 700
    :pswitch_9
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    if-eqz v1, :cond_9

    .line 701
    iget-wide v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    iget-wide v6, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    :cond_9
    const/4 v1, 0x0

    .line 703
    iput-boolean v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    const-wide/16 v4, 0x0

    .line 704
    iput-wide v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    const-wide/high16 v4, -0x8000000000000000L

    .line 705
    iput-wide v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ:J

    .line 707
    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v4, v8, :cond_a

    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v4, v9, :cond_a

    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-ne v4, v15, :cond_c

    .line 711
    :cond_a
    :try_start_7
    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->ROR()V

    .line 712
    iput v9, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 713
    iput-boolean v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    .line 715
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_b

    .line 716
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 717
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->CJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 668
    :pswitch_a
    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v12, :cond_f

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-eq v1, v9, :cond_f

    iget v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    if-ne v1, v15, :cond_c

    goto :goto_4

    :cond_c
    const/16 v1, 0xc8

    .line 899
    iput v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 900
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf:Z

    if-nez v1, :cond_11

    .line 901
    new-instance v1, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    const/16 v4, 0x134

    invoke-direct {v1, v4, v3}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;-><init>(II)V

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->Qhi(Ljava/lang/String;)V

    .line 903
    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_d

    .line 904
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 905
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v3, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    goto :goto_3

    .line 908
    :cond_e
    iput-boolean v14, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf:Z

    goto :goto_5

    .line 671
    :cond_f
    :goto_4
    :try_start_8
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->fl()V

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->tP:J

    .line 675
    iput v8, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 677
    iget-wide v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_10

    .line 679
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    iget-wide v2, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    iget v4, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->CJ:I

    invoke-interface {v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(JI)V

    const-wide/16 v1, -0x1

    .line 680
    iput-wide v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    .line 682
    :cond_10
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    if-eqz v1, :cond_11

    .line 683
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->aP:Z

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    :cond_11
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public Qhi(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 579
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    .line 580
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Z)V

    .line 581
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$4;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;)V
    .locals 2

    const/16 p1, 0xd1

    .line 997
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 998
    sget-object p1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 999
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz p1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1002
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1003
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;I)V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-eq v0, p1, :cond_0

    return-void

    .line 977
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 979
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v0, p0, p2}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;IIII)V
    .locals 0

    .line 1349
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    .line 1350
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 1351
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {p4, p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 1406
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 609
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    if-eqz p1, :cond_2

    .line 611
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    .line 613
    :cond_2
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->CQU:Z

    .line 230
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Z)V

    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_2

    .line 233
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$9;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$9;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public Qhi(ZJZ)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->qMt()V

    .line 317
    iput-boolean p4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->aP:Z

    .line 318
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    .line 320
    invoke-virtual {p0, p4}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(Z)V

    if-eqz p1, :cond_1

    .line 323
    iput-wide p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zc:J

    .line 324
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS()V

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(J)V

    .line 329
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz p1, :cond_2

    .line 330
    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    iget p3, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->sDy:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/component/utils/CQU;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->fl:Z

    return v0
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;II)Z
    .locals 2

    .line 1012
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->CQU()V

    const/16 p1, 0xc8

    .line 1013
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 1014
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz p1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1017
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1018
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww()V

    .line 1020
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 1023
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1024
    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    invoke-direct {p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;-><init>(II)V

    .line 1025
    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3

    .line 1026
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1027
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {p3, p0, p1}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    goto :goto_0

    :cond_4
    return v0
.end method

.method public ROR()Z
    .locals 2

    .line 636
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    .line 637
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public Sf()Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->WAv:Z

    return v0
.end method

.method public Tgh()Z
    .locals 2

    .line 627
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public WAv()V
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$11;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$11;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public ac(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;)V
    .locals 2

    .line 1192
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1194
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ac()Z
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public cJ(I)V
    .locals 0

    .line 1452
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->CJ:I

    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;)V
    .locals 2

    .line 1120
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xcd

    .line 1123
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    .line 1126
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    if-eqz p1, :cond_1

    .line 1127
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->zc()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1130
    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/cJ;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/api/cJ;-><init>()V

    .line 1131
    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/cJ;->Qhi(F)V

    .line 1132
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz p1, :cond_3

    .line 1139
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    if-eqz p1, :cond_2

    .line 1140
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh()V

    goto :goto_0

    .line 1143
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/bytedance/sdk/component/utils/CQU;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessage(Landroid/os/Message;)Z

    .line 1146
    :cond_3
    :goto_0
    sget-object p1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->EBS:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1147
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->FQ:Z

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->MQ:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    .line 1150
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM()V

    const/4 p1, 0x1

    .line 1151
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->MQ:Z

    .line 1153
    :cond_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 1154
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1155
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public cJ(Z)V
    .locals 2

    .line 1261
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-nez v0, :cond_1

    return-void

    .line 1268
    :cond_1
    new-instance v1, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$8;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$8;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ()Z
    .locals 2

    .line 653
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;II)Z
    .locals 4

    .line 1062
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_2

    .line 1066
    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    invoke-direct {p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;-><init>(II)V

    .line 1067
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 1068
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1069
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-interface {v2, p0, p1}, Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    goto :goto_0

    .line 1074
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(II)V

    return v1
.end method

.method public fl()I
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->iMK()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hm()V
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-nez v0, :cond_1

    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->lB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->MQ()V

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->zn:Z

    .line 297
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->js:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$Qhi;->Qhi(Z)V

    const-wide/16 v0, 0x0

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ(J)V

    .line 300
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_2

    .line 301
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Jma:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->sDy:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->NFd:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public hpZ()J
    .locals 4

    .line 1358
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->kYc:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1361
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_2

    .line 1363
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->WAv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->kYc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    :catchall_0
    :cond_2
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->kYc:J

    return-wide v0
.end method

.method public iMK()J
    .locals 4

    .line 1302
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->iMK:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1303
    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    add-long/2addr v2, v0

    return-wide v2

    .line 1306
    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->pA:J

    return-wide v0
.end method

.method public kYc()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->cJ:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public pA()I
    .locals 1

    .line 1333
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac:I

    return v0
.end method

.method public tP()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public zc()V
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->WAv:Z

    .line 491
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->sDy()V

    .line 492
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 494
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Tgh:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww()V

    return-void

    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Dww()V

    :cond_2
    return-void
.end method
