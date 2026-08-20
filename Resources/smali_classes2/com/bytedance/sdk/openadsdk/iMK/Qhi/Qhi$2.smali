.class Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi$2;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/hm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi;Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi$Qhi;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi$2;->Qhi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 57
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi$2;->Qhi:I

    if-gtz v0, :cond_0

    return-object p1

    .line 61
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/Qhi$2;->Qhi:I

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/CJ/kYc;->Qhi(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
