.class Lcom/bytedance/sdk/openadsdk/iMK/ac$2;
.super Ljava/lang/Object;
.source "TTNetClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/widget/ImageView;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/iMK/ac;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/iMK/ac;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;->ac:Lcom/bytedance/sdk/openadsdk/iMK/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;->Qhi:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;->Qhi:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/cJ$Qhi;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
