.class Lcom/bytedance/sdk/openadsdk/component/ROR$6;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

.field final synthetic Qhi:I

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/component/ROR;

.field final synthetic Tgh:Ljava/io/File;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/ROR$ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$ac;Ljava/io/File;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->ROR:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$ac;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->Tgh:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 2

    .line 355
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->ROR:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->Qhi:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(I)V

    .line 358
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide p1

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;JZ)V

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(J)V

    .line 362
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(I)V

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$ac;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/ROR$ac;->Qhi()V

    .line 368
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/ROR$fl;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 3

    .line 376
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v0

    .line 377
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;JZ)V

    .line 378
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(J)V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$ac;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/ROR$ac;->Qhi(ILjava/lang/String;)V

    .line 386
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->Tgh:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->Tgh:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 387
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$6;->Tgh:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ROR;->ac(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 0

    return-void
.end method
