.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/fl;
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;


# instance fields
.field protected ABk:Z

.field protected CJ:Landroid/view/SurfaceHolder;

.field protected final CQU:Landroid/view/ViewGroup;

.field protected Dww:Z

.field protected EBS:Z

.field protected Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

.field protected final Gm:Landroid/content/Context;

.field protected HzH:Z

.field private Jma:Z

.field protected MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected NFd:J

.field protected Qhi:Ljava/lang/String;

.field protected ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

.field protected final Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field protected Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

.field protected WAv:J

.field protected aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

.field protected final ac:Lcom/bytedance/sdk/component/utils/CQU;

.field protected bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

.field protected final cJ:I

.field protected fl:Landroid/graphics/SurfaceTexture;

.field protected hm:J

.field protected hpZ:Z

.field protected iMK:Z

.field private js:I

.field protected kYc:Z

.field private lB:J

.field private lG:J

.field protected pA:Z

.field protected pM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;",
            ">;"
        }
    .end annotation
.end field

.field protected qMt:Z

.field protected sDy:Ljava/lang/Runnable;

.field protected tP:Z

.field protected final zc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zn:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/view/ViewGroup;)V
    .locals 5

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "TTAD.VideoController"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi:Ljava/lang/String;

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->cJ:I

    .line 62
    new-instance v0, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hm:J

    .line 69
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->WAv:J

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zc:Ljava/util/List;

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    .line 73
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->iMK:Z

    const/4 v3, 0x1

    .line 75
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pA:Z

    .line 79
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->HzH:Z

    .line 80
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->kYc:Z

    .line 82
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->tP:Z

    .line 87
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->EBS:Z

    .line 99
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->sDy:Ljava/lang/Runnable;

    .line 106
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lG:J

    .line 107
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Jma:Z

    .line 648
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->js:I

    .line 753
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Gm:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CQU:Landroid/view/ViewGroup;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi:Ljava/lang/String;

    return-void
.end method

.method private Qhi(JZ)V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lG()V

    .line 580
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(J)V

    return-void
.end method

.method private ac(I)Z
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(I)Z

    move-result p1

    return p1
.end method

.method private kYc()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    instance-of v0, v0, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private lG()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 589
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(I)V

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ZZ)V

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Z)V

    .line 592
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl()V

    .line 593
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic ABk()Lcom/bykv/vk/openvk/component/video/api/CJ/ac;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->EBS()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    return-object v0
.end method

.method public final CJ(J)V
    .locals 3

    .line 742
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hm:J

    .line 743
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->WAv:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->WAv:J

    .line 744
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz p1, :cond_1

    .line 749
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hm:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hpZ:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(ZJZ)V

    :cond_1
    return-void
.end method

.method public final CJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V
    .locals 1

    .line 531
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->tP:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh(Z)V

    .line 533
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(Landroid/view/ViewGroup;)V

    .line 536
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(I)V

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 538
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(ZI)V

    return-void
.end method

.method public final CJ(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Jma:Z

    return-void
.end method

.method public final CQU()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ()Z

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

.method public Dww()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Jma:Z

    return v0
.end method

.method public final EBS()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object v0
.end method

.method protected final Eh()V
    .locals 5

    .line 611
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 612
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 613
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->sDy()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 614
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 615
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->EBS()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    return-void
.end method

.method public Gm()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->HzH:Z

    return v0
.end method

.method public HzH()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected MQ()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zc:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 179
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final NFd()V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    return-void
.end method

.method public final Qhi()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Gm()V

    .line 729
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->qMt:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->aP()V

    :cond_1
    return-void
.end method

.method public final Qhi(I)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Gm:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 488
    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 491
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .line 494
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 p1, 0x400

    if-nez v1, :cond_4

    .line 498
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 500
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public Qhi(J)V
    .locals 2

    .line 155
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hm:J

    .line 156
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->WAv:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->WAv:J

    return-void
.end method

.method protected Qhi(JJ)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide p3, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    .line 761
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 762
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object p1

    const-string p2, "videoPercent30"

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_1
    return-void
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public final Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;I)V
    .locals 2

    .line 560
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez p1, :cond_0

    return-void

    .line 563
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lB:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ac(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(JZ)V

    return-void
.end method

.method public final Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;IZ)V
    .locals 4

    .line 544
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Gm:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long p1, p2

    .line 547
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->NFd:J

    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p1, p1

    int-to-long p1, p1

    .line 549
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lB:J

    goto :goto_0

    .line 551
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lB:J

    .line 553
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_2

    .line 554
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lB:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(J)V

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    .line 219
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl:Landroid/graphics/SurfaceTexture;

    .line 220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Landroid/graphics/SurfaceTexture;)V

    .line 222
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Z)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->MQ()V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    .line 190
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CJ:Landroid/view/SurfaceHolder;

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Landroid/view/SurfaceHolder;)V

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->MQ()V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public final Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;ZZ)V
    .locals 1

    .line 514
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pA:Z

    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi()V

    :cond_0
    if-eqz p3, :cond_1

    .line 517
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pA:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CQU()Z

    move-result p1

    if-nez p1, :cond_1

    .line 518
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pM()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    .line 519
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ZZZ)V

    .line 521
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 522
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh()V

    .line 523
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl()V

    return-void

    .line 525
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh()V

    return-void
.end method

.method public final Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-void
.end method

.method public final Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;)V
    .locals 1

    .line 451
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pM:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;)V
    .locals 0

    return-void
.end method

.method protected final Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 5

    .line 636
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 637
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 638
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->sDy()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 639
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 640
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    .line 641
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->EBS()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->ac(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    return-void
.end method

.method protected final Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 4

    .line 598
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->iMK()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(JZ)V

    .line 604
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 605
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Dww()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(Z)V

    .line 606
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 607
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-static {v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method public final Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Tgh$Qhi;Ljava/lang/String;)V
    .locals 1

    .line 665
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$4;->Qhi:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh$Qhi;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->cJ()V

    const/4 p1, 0x0

    .line 674
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->HzH:Z

    .line 675
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->kYc:Z

    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ac()V

    return-void

    .line 667
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi()V

    return-void
.end method

.method protected Qhi(Ljava/lang/Runnable;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->EBS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->cJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 273
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pA:Z

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(Z)V

    :cond_0
    return-void
.end method

.method public final ROR()I
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->pA()I

    move-result v0

    return v0
.end method

.method public final Sf()J
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->hpZ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Tgh()J
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->iMK()J

    move-result-wide v0

    return-wide v0
.end method

.method protected Tgh(Z)V
    .locals 0

    .line 363
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->tP:Z

    return-void
.end method

.method public final WAv()I
    .locals 4

    .line 404
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->WAv:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->NFd:J

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v0

    return v0
.end method

.method protected final aP()V
    .locals 5

    .line 619
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 620
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 621
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->sDy()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 622
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 623
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    return-void
.end method

.method public ac(J)V
    .locals 0

    .line 297
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->NFd:J

    return-void
.end method

.method public final ac(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V
    .locals 0

    .line 506
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hm()V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x3

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(ZI)V

    return-void
.end method

.method public final ac(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->iMK:Z

    return-void
.end method

.method public bxS()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pA:Z

    return v0
.end method

.method public cJ(I)V
    .locals 0

    .line 655
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->js:I

    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 284
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->lG:J

    return-void
.end method

.method public final cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;I)V
    .locals 0

    .line 568
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh()V

    :cond_0
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    .line 232
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl:Landroid/graphics/SurfaceTexture;

    .line 236
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->MQ()V

    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    const/4 p2, 0x0

    .line 207
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CJ:Landroid/view/SurfaceHolder;

    .line 208
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Z)V

    :cond_0
    return-void
.end method

.method public final cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;ZZ)V
    .locals 0

    .line 419
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->tP:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh(Z)V

    .line 420
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Gm:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    return-void

    .line 427
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->tP:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    move p1, p4

    .line 428
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(I)V

    .line 430
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_4

    .line 431
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Landroid/view/ViewGroup;)V

    .line 432
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Z)V

    goto :goto_1

    .line 435
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(I)V

    .line 437
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_4

    .line 438
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(Landroid/view/ViewGroup;)V

    .line 439
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Z)V

    .line 443
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->pM:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 445
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->tP:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;->Qhi(Z)V

    :cond_6
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 1

    .line 392
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    .line 393
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;->Sf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hpZ:Z

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method protected final cJ(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 5

    .line 627
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 628
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 629
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->sDy()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 630
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 631
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ(I)V

    .line 632
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method protected cJ(Ljava/lang/Runnable;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->zc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cJ(Z)V
    .locals 2

    .line 316
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hpZ:Z

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ(Z)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_2

    .line 321
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Z)V

    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public fl()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hm:J

    return-wide v0
.end method

.method public final fl(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;Z)V

    return-void
.end method

.method public fl(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->EBS:Z

    return-void
.end method

.method public final hm()J
    .locals 4

    .line 711
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final hpZ()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Dww:Z

    return v0
.end method

.method public iMK()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->hpZ:Z

    return v0
.end method

.method protected final lB()V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dI()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 737
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi;->Qhi(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public pA()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->iMK:Z

    return v0
.end method

.method public final pM()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected qMt()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sDy()I
    .locals 1

    .line 651
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->js:I

    return v0
.end method

.method protected tP()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->kYc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->tP()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->fl:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CJ:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->kYc()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->CJ:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-void
.end method

.method public zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    return-object v0
.end method
