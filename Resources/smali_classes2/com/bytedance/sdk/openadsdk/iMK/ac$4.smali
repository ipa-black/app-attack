.class Lcom/bytedance/sdk/openadsdk/iMK/ac$4;
.super Ljava/lang/Object;
.source "TTNetClient.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/hm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/view/View;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/iMK/ac;Landroid/view/View;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$4;->cJ:Lcom/bytedance/sdk/openadsdk/iMK/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$4;->Qhi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$4;->Qhi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/CJ/kYc;->Qhi(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
