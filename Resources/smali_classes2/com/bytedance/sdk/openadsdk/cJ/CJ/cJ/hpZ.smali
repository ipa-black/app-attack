.class public Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;
.super Ljava/lang/Object;
.source "VideoLogHelperModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

.field private Qhi:J

.field private ac:I

.field private cJ:Ljava/lang/String;

.field private fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->Qhi:J

    .line 21
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac:I

    .line 23
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    .line 24
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    return-object v0
.end method

.method public Qhi()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->Qhi:J

    return-wide v0
.end method

.method public ac()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac:I

    return v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method
