.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->Qhi()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->cJ()I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pM()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, -0x3ec

    if-eq v1, v2, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->NFd(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Play video error\uff0cshow result page\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lB(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->sDy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V

    .line 184
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Z)V

    .line 185
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CJ()V

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->lG(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Jma(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->js(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->FQ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->es(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->yN(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->cJ(JI)V

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pM()Z

    move-result v2

    if-nez v2, :cond_4

    .line 197
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;

    invoke-interface {v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;->Qhi(II)V

    :cond_4
    return-void
.end method
