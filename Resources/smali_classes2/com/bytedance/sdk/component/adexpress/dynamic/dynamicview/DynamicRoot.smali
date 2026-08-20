.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRoot;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicRoot.java"


# instance fields
.field public Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V

    return-void
.end method


# virtual methods
.method protected Qhi(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 37
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRoot;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;

    return-object v0
.end method

.method protected Qhi(Landroid/graphics/Bitmap;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;
    .locals 2

    .line 25
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRoot;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Qhi;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRoot;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;

    return-object v0
.end method

.method protected getDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 31
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRoot;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/cJ;

    return-object v0
.end method

.method public hm()Z
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidgetImp;->hm()Z

    move-result v0

    return v0
.end method
