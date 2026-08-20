.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    return-void
.end method
