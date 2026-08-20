.class Lcom/bytedance/adsdk/ugeno/component/cJ$2;
.super Ljava/lang/Object;
.source "UGenWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$2;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 282
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$2;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$2;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac(Lcom/bytedance/adsdk/ugeno/component/cJ;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$2;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$2;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$2;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-interface {p1, v0, v1, v1}, Lcom/bytedance/adsdk/ugeno/core/iMK;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;)V

    :cond_0
    return-void
.end method
