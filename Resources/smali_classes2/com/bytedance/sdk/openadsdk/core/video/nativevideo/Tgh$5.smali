.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/HzH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V
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
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 659
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/fl/zc<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 644
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/zc;->cJ()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/zc;->cJ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 649
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 650
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result p1

    .line 651
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 653
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v2, "load_vast_icon_success"

    invoke-static {v1, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method
