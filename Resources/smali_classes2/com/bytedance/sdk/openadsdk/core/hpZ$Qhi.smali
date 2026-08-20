.class Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/hpZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field private final cJ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/Sf;Landroid/view/ViewGroup;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    .line 206
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;->cJ:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;->cJ:Landroid/view/ViewGroup;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;)F

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    return-void
.end method
