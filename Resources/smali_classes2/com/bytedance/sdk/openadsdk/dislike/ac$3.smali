.class Lcom/bytedance/sdk/openadsdk/dislike/ac$3;
.super Ljava/lang/Object;
.source "TTDislikeDialogDefault.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/ac;->Qhi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/dislike/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/ac;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->cJ(Lcom/bytedance/sdk/openadsdk/dislike/ac;)V

    .line 178
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/ac;)Lcom/bytedance/sdk/openadsdk/dislike/ac$Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/ac;)Lcom/bytedance/sdk/openadsdk/dislike/ac$Qhi;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dislike/ac$Qhi;->ac()V

    :cond_0
    return-void
.end method
