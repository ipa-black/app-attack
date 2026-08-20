.class public Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;
.super Ljava/lang/Object;
.source "AppOpenAdNativeManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ROR$fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Qhi"
.end annotation


# instance fields
.field Qhi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ac;Landroid/app/Activity;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;->Qhi:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/ac;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ac;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
