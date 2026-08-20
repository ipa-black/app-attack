.class final Lcom/appnext/banners/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic di:Lcom/appnext/banners/g;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/appnext/banners/g$3;->di:Lcom/appnext/banners/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/g$3;->di:Lcom/appnext/banners/g;

    iget-object v0, v0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appnext/banners/g$3;->di:Lcom/appnext/banners/g;

    iget-object v1, v1, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :catchall_0
    iget-object v0, p0, Lcom/appnext/banners/g$3;->di:Lcom/appnext/banners/g;

    iget-object v0, v0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/appnext/banners/g$3;->di:Lcom/appnext/banners/g;

    iget-object v0, v0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 156
    iget-object v0, p0, Lcom/appnext/banners/g$3;->di:Lcom/appnext/banners/g;

    iget-object v0, v0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method
