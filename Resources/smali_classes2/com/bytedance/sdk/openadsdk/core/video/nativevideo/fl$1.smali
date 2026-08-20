.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl$1;
.super Ljava/lang/Object;
.source "NativeVideoDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;->CJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;->ac(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V

    :cond_0
    return-void
.end method
