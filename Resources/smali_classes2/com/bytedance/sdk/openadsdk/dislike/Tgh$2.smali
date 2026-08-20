.class Lcom/bytedance/sdk/openadsdk/dislike/Tgh$2;
.super Ljava/lang/Object;
.source "TTDislikeSuggestionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->Qhi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->fl(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->fl(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;->cJ()V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->dismiss()V

    return-void
.end method
