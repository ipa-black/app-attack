.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$3;
.super Ljava/lang/Object;
.source "PAGSdk.java"

# interfaces
.implements Lcom/bytedance/sdk/component/widget/SSWebView$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/webkit/WebView;
    .locals 1

    .line 121
    instance-of v0, p1, Landroid/content/MutableContextWrapper;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 125
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    if-nez p3, :cond_2

    .line 127
    new-instance p3, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p3

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/widget/PangleWebView;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/PangleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method
