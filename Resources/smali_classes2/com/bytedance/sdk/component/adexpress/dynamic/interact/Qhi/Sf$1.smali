.class Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf$1;
.super Ljava/lang/Object;
.source "UnlockTapTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/view/ViewGroup;

.field final synthetic cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;Landroid/view/ViewGroup;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf$1;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf$1;->Qhi:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf$1;->Qhi:Landroid/view/ViewGroup;

    const v1, 0x7d06fffa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf$1;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/Sf;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    return-void
.end method
