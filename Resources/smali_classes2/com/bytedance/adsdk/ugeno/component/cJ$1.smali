.class Lcom/bytedance/adsdk/ugeno/component/cJ$1;
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

    .line 269
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$1;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$1;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->ip:Lcom/bytedance/adsdk/ugeno/core/Sf;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$1;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac(Lcom/bytedance/adsdk/ugeno/component/cJ;)Z

    :cond_0
    return-void
.end method
