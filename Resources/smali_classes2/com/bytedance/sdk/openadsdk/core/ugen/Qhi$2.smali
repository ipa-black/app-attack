.class Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$2;
.super Ljava/lang/Object;
.source "ImageLoaderProvider.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/HzH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;FLcom/bytedance/adsdk/ugeno/Qhi$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$2;->Qhi:Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
    .locals 1

    .line 93
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/zc;->cJ()Ljava/lang/Object;

    move-result-object p1

    .line 94
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$2;->Qhi:Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;->Qhi(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
