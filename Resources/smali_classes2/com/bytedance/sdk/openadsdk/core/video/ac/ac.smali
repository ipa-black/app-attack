.class public Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
.super Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;
.source "SupportReplayMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;,
        Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;
    }
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;

.field private final Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;",
            ">;"
        }
    .end annotation
.end field

.field private ac:I

.field private cJ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi:Ljava/util/List;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ:I

    .line 29
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac:I

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;

    .line 36
    invoke-super {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;)V

    const/16 v0, 0x1f4

    .line 38
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(I)V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I
    .locals 2

    .line 18
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac:I

    return v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ:I

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac:I

    return p0
.end method


# virtual methods
.method public HzH()J
    .locals 6

    .line 48
    invoke-super {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->HzH()J

    move-result-wide v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    invoke-super {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public MQ()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac:I

    return v0
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;)V
    .locals 1

    .line 57
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi:Ljava/util/List;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;)V

    return-void
.end method

.method public ac(I)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ:I

    return-void
.end method

.method public hpZ()J
    .locals 4

    .line 43
    invoke-super {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->hpZ()J

    move-result-wide v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method
