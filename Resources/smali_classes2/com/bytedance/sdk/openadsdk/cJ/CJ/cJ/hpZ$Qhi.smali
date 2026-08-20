.class public Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;
.super Ljava/lang/Object;
.source "VideoLogHelperModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:Z

.field private Gm:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

.field private Qhi:J

.field private ROR:I

.field private Sf:I

.field private Tgh:I

.field private WAv:Z

.field private ac:J

.field private cJ:J

.field private fl:I

.field private hm:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi:J

    .line 70
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ:J

    .line 71
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac:J

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ:Z

    .line 83
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv:Z

    return-void
.end method

.method private ABk()V
    .locals 5

    .line 97
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 98
    rem-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi:J

    :cond_0
    return-void
.end method


# virtual methods
.method public CJ()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->fl:I

    return v0
.end method

.method public CJ(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->hm:I

    return-void
.end method

.method public Gm()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ:Z

    return v0
.end method

.method public Qhi()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi:J

    return-wide v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->fl:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi:J

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ABk()V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Gm:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ:Z

    return-void
.end method

.method public ROR()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ROR:I

    return v0
.end method

.method public Sf()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Sf:I

    return v0
.end method

.method public Tgh()I
    .locals 6

    .line 136
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 139
    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x64

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public WAv()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv:Z

    return v0
.end method

.method public ac()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac:J

    return-wide v0
.end method

.method public ac(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ROR:I

    return-void
.end method

.method public ac(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac:J

    .line 116
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ABk()V

    return-void
.end method

.method public cJ()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ:J

    return-wide v0
.end method

.method public cJ(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh:I

    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ:J

    return-void
.end method

.method public fl()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh:I

    return v0
.end method

.method public hm()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->hm:I

    return v0
.end method

.method public zc()Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Gm:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    return-object v0
.end method
