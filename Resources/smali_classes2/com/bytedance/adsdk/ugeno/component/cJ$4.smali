.class Lcom/bytedance/adsdk/ugeno/component/cJ$4;
.super Ljava/lang/Object;
.source "UGenWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/core/cJ/ac;

.field final synthetic ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field final synthetic cJ:Lcom/bytedance/adsdk/ugeno/core/cJ/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/component/cJ;Lcom/bytedance/adsdk/ugeno/core/cJ/ac;Lcom/bytedance/adsdk/ugeno/core/cJ/fl;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->Qhi:Lcom/bytedance/adsdk/ugeno/core/cJ/ac;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->cJ:Lcom/bytedance/adsdk/ugeno/core/cJ/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->jPH:Lcom/bytedance/adsdk/ugeno/core/pA;

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->jPH:Lcom/bytedance/adsdk/ugeno/core/pA;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-interface {p1, v0, p2}, Lcom/bytedance/adsdk/ugeno/core/pA;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)V

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 344
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 345
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object v1, v1, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-interface {p1, v0, v1, v1}, Lcom/bytedance/adsdk/ugeno/core/iMK;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;)V

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->CJ(Lcom/bytedance/adsdk/ugeno/component/cJ;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 350
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->Qhi:Lcom/bytedance/adsdk/ugeno/core/cJ/ac;

    if-eqz p1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->cJ:Lcom/bytedance/adsdk/ugeno/core/cJ/fl;

    if-eqz p1, :cond_3

    .line 356
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ$4;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/adsdk/ugeno/core/cJ/fl;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
