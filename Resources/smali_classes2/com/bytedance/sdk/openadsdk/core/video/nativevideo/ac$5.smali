.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->es()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;II)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->Qhi:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->cJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 756
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->Qhi:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->cJ:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 757
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 758
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pF(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v1

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pF(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->wp(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;

    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pF(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v1

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pF(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->VV(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 766
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$5;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Px(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;

    return-void
.end method
