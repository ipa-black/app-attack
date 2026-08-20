.class Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;
.super Ljava/lang/Object;
.source "TTNetClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/iMK/ac$3;->Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/Object;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/iMK/ac$3;Ljava/lang/Object;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->Qhi:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;->Qhi:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;->Qhi:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;->Qhi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->Qhi:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;->Qhi:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;->Qhi:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3$1;->Qhi:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
