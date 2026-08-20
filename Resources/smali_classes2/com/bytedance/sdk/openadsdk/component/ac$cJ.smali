.class public Lcom/bytedance/sdk/openadsdk/component/ac$cJ;
.super Ljava/lang/Object;
.source "AppOpenAdNativeManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/pA$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation


# instance fields
.field private final Qhi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/component/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V
    .locals 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$cJ;->Qhi:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V
    .locals 2

    .line 428
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->CJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$cJ;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/ac;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->cJ()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->Qhi()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ac;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
