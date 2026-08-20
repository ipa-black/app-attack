.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;
.super Ljava/lang/Object;
.source "ClickInteract.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/interact/hm;


# instance fields
.field Qhi:Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p3, Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    invoke-direct {p3, p1}, Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    .line 19
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicHeight()I

    move-result p3

    .line 20
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicHeight()I

    move-result p2

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 21
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    return-object v0
.end method

.method public Qhi()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;->Qhi()V

    return-void
.end method

.method public synthetic ac()Landroid/view/ViewGroup;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;->CJ()Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    move-result-object v0

    return-object v0
.end method

.method public cJ()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/fl;->Qhi:Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/widget/ClickInteractView;->cJ()V

    return-void
.end method
