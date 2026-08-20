.class Lcom/bytedance/sdk/openadsdk/dislike/Tgh$5;
.super Ljava/lang/Object;
.source "TTDislikeSuggestionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->CJ()V
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

    .line 221
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->fl(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->fl(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;->ac()V

    :cond_0
    return-void
.end method
