.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;
.super Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;
.source "NativeVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public ac()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    .line 215
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    .line 216
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public cJ()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 207
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
