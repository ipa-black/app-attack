.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V

    :cond_1
    return-void
.end method
