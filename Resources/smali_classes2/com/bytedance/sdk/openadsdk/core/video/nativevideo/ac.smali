.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;
.super Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$Qhi;
    }
.end annotation


# instance fields
.field private Dq:I

.field private FQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;",
            ">;"
        }
    .end annotation
.end field

.field private Hf:Z

.field private final Jma:Z

.field private MND:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/cJ;

.field private PAe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private Qe:I

.field private final YB:Ljava/lang/Runnable;

.field private final cjC:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

.field private final dIT:Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

.field private final es:Z

.field private ip:I

.field private jPH:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field private final js:Ljava/lang/String;

.field private lB:J

.field private lG:J

.field private xyz:I

.field private yN:Z

.field private final zn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 2

    .line 412
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/view/ViewGroup;)V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lB:J

    .line 67
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG:J

    const/4 p3, 0x1

    .line 75
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN:Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ip:I

    .line 82
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->xyz:I

    .line 91
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->dIT:Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    .line 549
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qe:I

    .line 680
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->YB:Ljava/lang/Runnable;

    .line 906
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cjC:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    .line 963
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Hf:Z

    .line 413
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dq:I

    .line 414
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Z)V

    .line 415
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->js:Ljava/lang/String;

    .line 417
    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ip:I

    .line 418
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->xyz:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :catchall_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Landroid/content/Context;)V

    .line 423
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Jma:Z

    .line 425
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zn:Z

    .line 426
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->es:Z

    if-eqz p8, :cond_0

    .line 428
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->jPH:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    :cond_0
    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method private CJ(I)V
    .locals 1

    .line 922
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dq:I

    if-ne v0, p1, :cond_0

    return-void

    .line 926
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dq:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->kYc:Z

    .line 932
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->kYc:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 933
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(II)Z

    .line 936
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->PAe:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 937
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->PAe:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$Qhi;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dq:I

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$Qhi;->Qhi(I)V

    :cond_3
    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->js()V

    return-void
.end method

.method static synthetic CQU(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic DaO(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    return-wide v0
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic Dww(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic EBS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic EGK(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic Eh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Jma:Z

    return p0
.end method

.method static synthetic FQ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic Gy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic HLI(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic HUk(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    return-wide v0
.end method

.method static synthetic Hf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic HzH(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lB()V

    return-void
.end method

.method static synthetic IC(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Jma(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic MND(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic MQ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic NBs(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic NFd(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Oy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic PAe(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic PER(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    return-wide v0
.end method

.method static synthetic Px(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Qe(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;J)J
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lB:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private Qhi(Landroid/content/Context;)V
    .locals 9

    .line 393
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Lcom/bytedance/sdk/openadsdk/layout/TTVideoPlayLayoutForLiveLayout;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/layout/TTVideoPlayLayoutForLiveLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/layout/TTVideoDetailLayout;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/layout/TTVideoDetailLayout;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v3, v0

    .line 399
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-eqz v0, :cond_1

    .line 400
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS()Z

    move-result v8

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/CJ/fl;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    goto :goto_1

    .line 402
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/CJ/fl;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    .line 404
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/cJ;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->fl(I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;JJ)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(JJ)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;II)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(II)Z

    move-result p0

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dww:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic ReL(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Ri(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic SL(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic SO(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    return-wide v0
.end method

.method static synthetic TKG(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hpZ:Z

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Ura(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic VV(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic VnT(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    return-wide v0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->YB:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic Wrw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    return-object p0
.end method

.method static synthetic XH(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic YB(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic aP(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method private ac(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 3

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac(I)V

    .line 525
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lB:J

    .line 527
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(I)V

    .line 528
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(I)V

    .line 530
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Ljava/lang/Runnable;)V

    .line 544
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->kYc()V

    :cond_0
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method private ac(II)Z
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

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dww:Z

    return p1
.end method

.method static synthetic bM(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->FQ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method private cJ(JJ)V
    .locals 8

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(J)V

    .line 813
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    .line 814
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd:J

    .line 815
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(JJ)V

    .line 816
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v0

    .line 817
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(I)V

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 823
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    const-string v2, "onProgressUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 825
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 827
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(JJLcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V

    :cond_1
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;JJ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(JJ)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method private cJ(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi()V

    .line 884
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HzH:Z

    .line 885
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    if-eqz p2, :cond_2

    .line 889
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p2, :cond_1

    .line 890
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 891
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi()V

    .line 892
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HzH:Z

    .line 893
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->kYc:Z

    .line 894
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p2, :cond_3

    .line 895
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->es:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ILcom/bykv/vk/openvk/component/video/api/ac/cJ;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 898
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HzH:Z

    .line 899
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_3

    .line 900
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA()V

    :cond_3
    return v1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dww:Z

    return p1
.end method

.method static synthetic cJP(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic cjC(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->es()V

    return-void
.end method

.method static synthetic dI(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic dIT(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic dVA(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic es(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    return-wide v0
.end method

.method private es()V
    .locals 8

    .line 697
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ()I

    move-result v0

    .line 704
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->fl()I

    move-result v1

    .line 706
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 707
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-lez v2, :cond_9

    if-lez v3, :cond_9

    if-lez v1, :cond_9

    if-gtz v0, :cond_1

    goto :goto_4

    :cond_1
    if-ne v0, v1, :cond_3

    if-le v2, v3, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v6, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_4

    int-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-double v6, v2

    mul-double/2addr v6, v4

    float-to-double v0, v0

    div-double/2addr v6, v0

    double-to-int v0, v6

    move v1, v2

    goto :goto_1

    :cond_4
    int-to-float v1, v1

    mul-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-double v6, v3

    mul-double/2addr v6, v4

    float-to-double v0, v1

    div-double/2addr v6, v0

    double-to-int v0, v6

    move v1, v0

    move v0, v3

    :goto_1
    if-gt v0, v3, :cond_6

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :cond_6
    :goto_2
    if-gt v1, v2, :cond_8

    if-gtz v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    .line 752
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;II)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void

    .line 698
    :cond_a
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[step-1] >>>>> mContextRef="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Gm:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getIRenderView() ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[step-11] >>>>> changeVideoSize error !!!!! \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic et(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method private fl(I)V
    .locals 1

    .line 943
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CJ(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 946
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HzH:Z

    :cond_0
    return-void
.end method

.method static synthetic gT(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic gga(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    return p0
.end method

.method static synthetic ip(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic jPH(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic js(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method private js()V
    .locals 8

    .line 552
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qe:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qe:I

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    .line 557
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JI)V

    .line 560
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lB:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG:J

    .line 561
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V

    .line 564
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt:Z

    if-nez v0, :cond_3

    .line 565
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt:Z

    .line 566
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(JJ)V

    .line 567
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->WAv:J

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->jPH:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 571
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->tP:Z

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->fl(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V

    .line 574
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->iMK:Z

    return-void
.end method

.method static synthetic kYc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic lB(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic lG(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic mZ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic oU(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic ots(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->PAe:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic pF(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p0

    return-object p0
.end method

.method static synthetic pM(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic pv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic qMt(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->jPH:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-object p0
.end method

.method static synthetic rB(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic sDy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic tP(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic vml(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic wp(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic xyz(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic yN(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd:J

    return-wide v0
.end method

.method private yN()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Gm:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic zjb(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic zn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG:J

    return-wide v0
.end method

.method private zn()V
    .locals 5

    .line 603
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ABk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "resumeVideo:  mIsSurfaceValid = "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ROR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ABk:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt()V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->sDy:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Ljava/lang/Runnable;)V

    .line 611
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ABk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    goto :goto_1

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hpZ:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(ZJZ)V

    .line 616
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh()V

    :cond_3
    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->zc()V

    .line 661
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    .line 663
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN:Z

    if-nez v0, :cond_1

    return-void

    .line 667
    :cond_1
    const-string v0, "embeded_ad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->js:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->MQ()V

    .line 673
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 675
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-eqz v0, :cond_3

    .line 676
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG()V

    :cond_3
    return-void
.end method

.method public Jma()V
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->iMK()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Ljava/util/Set;)V

    if-eqz p2, :cond_3

    .line 442
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 443
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    if-eqz p2, :cond_1

    .line 445
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    goto :goto_1

    :cond_2
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ip:I

    .line 379
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->xyz:I

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V
    .locals 2

    .line 786
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez p1, :cond_0

    return-void

    .line 789
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Tgh()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi()V

    .line 791
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    .line 792
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh()V

    return-void

    .line 794
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ROR()Z

    move-result p1

    if-nez p1, :cond_3

    .line 795
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_2

    .line 796
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Landroid/view/ViewGroup;)V

    .line 798
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CJ(J)V

    .line 799
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_4

    .line 800
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    return-void

    .line 803
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf(Z)V

    .line 804
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_4

    .line 805
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    :cond_4
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;Z)V
    .locals 0

    .line 833
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->tP:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh(Z)V

    .line 834
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Gm:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 838
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_1

    .line 839
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(Landroid/view/ViewGroup;)V

    .line 840
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Z)V

    .line 842
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(I)V

    .line 843
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pM:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pM:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 845
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->tP:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;->Qhi(Z)V

    :cond_3
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;)V
    .locals 1

    .line 457
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->FQ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;)V
    .locals 2

    .line 349
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$Qhi;)V
    .locals 1

    .line 983
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->PAe:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/cJ;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->MND:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/cJ;

    return-void
.end method

.method public Qhi(ZI)V
    .locals 2

    .line 631
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 633
    new-instance p1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 634
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->fl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 635
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 636
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 637
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(I)V

    .line 638
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ(I)V

    .line 640
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->jPH:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    const/4 p1, 0x0

    .line 641
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt:Z

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP()V

    .line 647
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CJ()V

    .line 649
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz p1, :cond_2

    .line 650
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->CJ()V

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z
    .locals 9

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 466
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, ""

    const-string v2, "twice playVideoUrl"

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 470
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    const-string v0, "[video] play video stop , because no video info"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 476
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Z)V

    .line 477
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    .line 479
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    .line 481
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd()V

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(ZF)V

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->js:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_4

    .line 488
    :cond_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    .line 490
    :cond_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_5

    .line 491
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt:Z

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    .line 495
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->WAv:J

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->WAv:J

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_7

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 500
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qe:I

    if-nez v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR()V

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Tgh()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(II)V

    .line 504
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Landroid/view/ViewGroup;)V

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Tgh()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(II)V

    .line 507
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_8

    .line 508
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    .line 509
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->dIT:Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;)V

    .line 511
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->tP()V

    .line 512
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG:J

    .line 514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi:Ljava/lang/String;

    const-string v1, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public ROR(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN:Z

    return-void
.end method

.method public Sf(Z)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 593
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->kYc()V

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zn()V

    return-void
.end method

.method public ac()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 623
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(ZI)V

    return-void
.end method

.method public ac(I)V
    .locals 1

    .line 956
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CJ(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 958
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HzH:Z

    .line 959
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ()V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->kYc()V

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zn()V

    return-void
.end method

.method public kYc()V
    .locals 2

    .line 966
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Hf:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->EBS:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 970
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Hf:Z

    .line 971
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cjC:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public lG()V
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Hf:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->EBS:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 978
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Hf:Z

    .line 979
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cjC:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;)V

    :cond_1
    :goto_0
    return-void
.end method
