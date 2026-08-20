.class Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;
.super Ljava/lang/Object;
.source "ImageLoaderProvider.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/hm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;FLcom/bytedance/adsdk/ugeno/Qhi$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:F

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;

.field final synthetic cJ:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;FLandroid/content/Context;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;->Qhi:F

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;->cJ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;->Qhi:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;->cJ:Landroid/content/Context;

    float-to-int v0, v0

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/component/adexpress/CJ/kYc;->Qhi(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
