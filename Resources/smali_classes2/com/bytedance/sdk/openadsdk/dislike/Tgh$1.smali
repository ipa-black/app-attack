.class Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;
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

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/core/customview/PAGEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    new-instance p1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v0, "0:00"

    invoke-direct {p1, v0, v4}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->CJ(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->fl(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->fl(Lcom/bytedance/sdk/openadsdk/dislike/Tgh;)Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;->Qhi(ILcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/Tgh;->dismiss()V

    :cond_1
    return-void
.end method
