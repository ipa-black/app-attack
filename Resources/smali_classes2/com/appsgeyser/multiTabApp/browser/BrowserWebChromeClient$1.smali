.class Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;
.super Ljava/lang/Object;
.source "BrowserWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Landroid/webkit/PermissionRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v4}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.RECORD_AUDIO"

    const/16 v6, 0x309

    invoke-static {v3, v4, v5, v6}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->this$0:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v4}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    const/16 v6, 0x308

    invoke-static {v3, v4, v5, v6}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method
