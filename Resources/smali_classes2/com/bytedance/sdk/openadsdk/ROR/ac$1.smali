.class Lcom/bytedance/sdk/openadsdk/ROR/ac$1;
.super Ljava/lang/Object;
.source "ImageLoaderToViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ROR/ac;->Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/widget/ImageView;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/ROR/ac;

.field final synthetic cJ:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ROR/ac;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ROR/ac$1;->ac:Lcom/bytedance/sdk/openadsdk/ROR/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ROR/ac$1;->Qhi:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ROR/ac$1;->cJ:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ROR/ac$1;->Qhi:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ROR/ac$1;->cJ:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
