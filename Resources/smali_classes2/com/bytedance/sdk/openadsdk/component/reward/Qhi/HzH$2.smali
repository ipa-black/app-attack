.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;
.super Ljava/lang/Object;
.source "VastEndCardManager.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/HzH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/fl/HzH<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    const/4 p2, -0x2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->Qhi:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/fl/zc<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/zc;->cJ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->Qhi:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;ILjava/lang/String;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Z)Z

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)V

    :cond_1
    return-void
.end method
